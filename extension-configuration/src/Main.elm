module Main exposing (main)

import Browser
import Html exposing (Html, div, img, text)
import Html.Attributes exposing (class, height, src, width)


main : Program Flags AppState Msg
main =
    Browser.element
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }


type AppState
    = Loading
    | Running Model
    | Error String


type alias Flags =
    Int


type alias Model =
    Int


type Msg
    = None


init : Flags -> ( AppState, Cmd msg )
init _ =
    ( Loading, Cmd.none )


update : Msg -> AppState -> ( AppState, Cmd msg )
update msg model =
    case msg of
        None ->
            ( model, Cmd.none )


view : AppState -> Html Msg
view appState =
    let
        appContent =
            case appState of
                Loading ->
                    img
                        [ class "d-block mx-auto mb-4", src "./assets/loading-spinner.gif", height 100, width 100 ]
                        []

                Running _ ->
                    div [ class "row g-5" ]
                        [ text "Running" ]

                Error errorText ->
                    div [ class "row g-5" ]
                        [ text errorText ]
    in
    div [ class "col-12" ]
        [ appContent ]


subscriptions : AppState -> Sub Msg
subscriptions _ =
    Sub.none

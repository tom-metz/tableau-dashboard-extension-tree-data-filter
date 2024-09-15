module Main exposing (main)

import Browser
import Html exposing (Html, div, text)
import Html.Attributes exposing (class)


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
view _ =
    div [ class "row g-5" ]
        [ text "It works!" ]


subscriptions : AppState -> Sub Msg
subscriptions _ =
    Sub.none

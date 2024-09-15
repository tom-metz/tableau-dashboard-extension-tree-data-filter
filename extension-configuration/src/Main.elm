module Main exposing (main)

import Browser
import Html exposing (Html, div, text)
import Html.Attributes exposing (class)


main : Program Flags Model Msg
main =
    Browser.element
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }


type alias Flags =
    Int


type alias Model =
    Int


type Msg
    = None


init : Flags -> ( Model, Cmd msg )
init _ =
    ( 0, Cmd.none )


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    case msg of
        None ->
            ( model, Cmd.none )


view : Model -> Html Msg
view _ =
    div [ class "row g-5" ]
        [ text "It works!" ]


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none

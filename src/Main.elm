module Main exposing (main)

import Browser
import Browser.Navigation as Nav
import Helper exposing (..)
import Html exposing (..)
import Url


main : Program () Model Msg
main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        , onUrlRequest = UrlRequested
        , onUrlChange = UrlChanged
        }


type alias Model =
    { key : Nav.Key
    , url : Url.Url
    , property : String
    }


init : flags -> Url.Url -> Nav.Key -> ( Model, Cmd Msg )
init flags url key =
    ( Model key url "flags", Cmd.none )


type Msg
    = Msg1
    | Msg2
    | UrlRequested Browser.UrlRequest
    | UrlChanged Url.Url


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Msg1 ->
            ( model, Cmd.none )

        Msg2 ->
            ( model, Cmd.none )

        UrlRequested urlRequest ->
            case urlRequest of
                Browser.Internal url ->
                    ( model, Nav.pushUrl model.key (Url.toString url) )

                Browser.External href ->
                    ( model, Nav.load href )

        UrlChanged url ->
            ( { model | url = url }, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none


view : Model -> Browser.Document Msg
view _ =
    { title = "Application Title"
    , body =
        [ div [ tail { css = """flex justify-between flex-col gap-10 items-center m-10 relative z-0""" } ]
            [ h1 [ tail { css = """
                font-robotoV text-4xl text-transparent relative bg-gradient-to-tr z-10
                from-red-700 to-teal-700 bg-clip-text [--wght:_900] px-4 drop-shadow
                transition-all duration-500 ease-[cubic-bezier(0.680,-0.550,0.265,1.550)]
                [text-shadow:3px_3px_3px_theme(colors.slate.100/.1),6px_-3px_6px_theme(colors.slate.500/.2)] text-center
                [transform-style:preserve-3d] [transform:rotate3d(0,1,0,50deg)_scale(.9)_translateZ(3px)]
                group hover:text-slate-700 hover:[--wdth:_200] hover:[--opsz:_20]
                hover:[--YTLC:_614] hover:[--YTUC:_812] 

hover:[text-shadow:7px_9px_10px_theme(colors.teal.200/.6),-7px_-9px_10px_theme(colors.sky.300/.4)]
                """ } ]
                [ text "New"
                , br [] []
                , text "Application"
                , span [ tail { css = """
                    absolute top-0 left-0  h-full scale-0 w-full bg-slate-100 opacity-0
                    transition-all duration-500 ease-[cubic-bezier(0.680,-0.550,0.265,1.550)]
                    group-hover:scale-100 group-hover:opacity-100 -z-10 group-hover:shadow-xl
                    group-hover:rounded-lg
                    """ } ] []
                ]
            , h1 [ tail { css = """
                font-robotoV text-4xl text-transparent relative bg-gradient-to-tr z-10
                from-red-700 to-teal-700 bg-clip-text [--wght:_900] px-4 drop-shadow
                transition-all duration-500 ease-[cubic-bezier(0.680,-0.550,0.265,1.550)]
                [text-shadow:3px_3px_3px_theme(colors.slate.100/.1),6px_-3px_6px_theme(colors.slate.500/.2)] text-center
                [transform-style:preserve-3d] [transform:rotate3d(0,1,0,-50deg)_scale(.9)_translateZ(3px)]
                group hover:text-slate-700 hover:[--wdth:_200] hover:[--opsz:_20]
                hover:[--YTLC:_614] hover:[--YTUC:_812] 

hover:[text-shadow:7px_9px_10px_theme(colors.teal.200/.6),-7px_-9px_10px_theme(colors.sky.300/.4)]
                """ } ]
                [ text "Settings"
                , span [ tail { css = """
                    absolute top-0 left-0  h-full scale-0 w-full bg-slate-100 opacity-0
                    transition-all duration-500 ease-[cubic-bezier(0.680,-0.550,0.265,1.550)]
                    group-hover:scale-100 group-hover:opacity-100 -z-10 group-hover:shadow-xl
                    group-hover:rounded-lg
                    """ } ] []
                ]
            ]
        ]
    }

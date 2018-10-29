
--------------------------
-- Auto-generated codes --
-- Do not edit this     -- 
--------------------------

module ElmPortfolio.Alchelmy exposing (Model, Msg, program)

import Browser exposing (Document, UrlRequest(..), application)
import Browser.Navigation exposing (Key, load, pushUrl)
import Html as Html exposing (Html, text)
import Maybe as Maybe
import Url exposing (Url)
import Url.Parser as UrlParser exposing (s, oneOf, Parser, parse, (</>))
import ElmPortfolio.Root as Root
import ElmPortfolio.Page.Counter as Counter
import ElmPortfolio.Page.Http as Http
import ElmPortfolio.Page.Minimum as Minimum
import ElmPortfolio.Page.NotFound as NotFound
import ElmPortfolio.Page.Preferences as Preferences
import ElmPortfolio.Page.Time as Time
import ElmPortfolio.Page.Top as Top
import ElmPortfolio.Page.URLParsing as URLParsing

type Model = Model 
  { route : RouteState
  , state : Root.Model
  , key : Key
  }

type Route 
  = Route__Counter Counter.Route
  | Route__Http Http.Route
  | Route__Minimum Minimum.Route
  | Route__NotFound NotFound.Route
  | Route__Preferences Preferences.Route
  | Route__Time Time.Route
  | Route__Top Top.Route
  | Route__URLParsing URLParsing.Route

type RouteState 
  = State__Counter Counter.Model
  | State__Http Http.Model
  | State__Minimum Minimum.Model
  | State__NotFound NotFound.Model
  | State__Preferences Preferences.Model
  | State__Time Time.Model
  | State__Top Top.Model
  | State__URLParsing URLParsing.Model
  
type Msg
  = UrlRequest UrlRequest
  | Navigate Url
  | Msg__Root Root.Msg
  | Msg__Counter Counter.Msg
  | Msg__Http Http.Msg
  | Msg__Minimum Minimum.Msg
  | Msg__NotFound NotFound.Msg
  | Msg__Preferences Preferences.Msg
  | Msg__Time Time.Msg
  | Msg__Top Top.Msg
  | Msg__URLParsing URLParsing.Msg


update : Msg -> Model -> ( Model, Cmd Msg )
update msg (Model model) = 
  case msg of 

    Msg__Root rootMsg -> case Root.update rootMsg model.state of
      (rootModel_, rootCmd) -> 
          (Model { model | state = rootModel_ }, Cmd.map Msg__Root rootCmd)

    UrlRequest urlRequest ->
      case urlRequest of
        Internal url ->
          ( Model model
          , pushUrl model.key (Url.toString url)
          )

        External url ->
          ( Model model
          , load url
          )

    Navigate location -> 
      let 
          route = 
            parseLocation location 
      in 
      case route of 

        Route__Counter routeValue -> 
          case Counter.page.init location routeValue model.state of 
            (initialModel, initialCmd) -> 
              ( Model { model | route = State__Counter initialModel }
              , Cmd.map Msg__Counter initialCmd
              )
        
        Route__Http routeValue -> 
          case Http.page.init location routeValue model.state of 
            (initialModel, initialCmd) -> 
              ( Model { model | route = State__Http initialModel }
              , Cmd.map Msg__Http initialCmd
              )
        
        Route__Minimum routeValue -> 
          case Minimum.page.init location routeValue model.state of 
            (initialModel, initialCmd) -> 
              ( Model { model | route = State__Minimum initialModel }
              , Cmd.map Msg__Minimum initialCmd
              )
        
        Route__NotFound routeValue -> 
          case NotFound.page.init location routeValue model.state of 
            (initialModel, initialCmd) -> 
              ( Model { model | route = State__NotFound initialModel }
              , Cmd.map Msg__NotFound initialCmd
              )
        
        Route__Preferences routeValue -> 
          case Preferences.page.init location routeValue model.state of 
            (initialModel, initialCmd) -> 
              ( Model { model | route = State__Preferences initialModel }
              , Cmd.map Msg__Preferences initialCmd
              )
        
        Route__Time routeValue -> 
          case Time.page.init location routeValue model.state of 
            (initialModel, initialCmd) -> 
              ( Model { model | route = State__Time initialModel }
              , Cmd.map Msg__Time initialCmd
              )
        
        Route__Top routeValue -> 
          case Top.page.init location routeValue model.state of 
            (initialModel, initialCmd) -> 
              ( Model { model | route = State__Top initialModel }
              , Cmd.map Msg__Top initialCmd
              )
        
        Route__URLParsing routeValue -> 
          case URLParsing.page.init location routeValue model.state of 
            (initialModel, initialCmd) -> 
              ( Model { model | route = State__URLParsing initialModel }
              , Cmd.map Msg__URLParsing initialCmd
              )
        



    Msg__Counter pageMsg -> 
      case model.route of 
        State__Counter pageModel -> 
          case Counter.page.update pageMsg model.state pageModel of 
            (model_, pageModel_, pageCmd ) -> 
              (Model { model | state = model_, route = State__Counter pageModel_ }, Cmd.map Msg__Counter pageCmd)
        
        _ -> (Model model, Cmd.none)

    Msg__Http pageMsg -> 
      case model.route of 
        State__Http pageModel -> 
          case Http.page.update pageMsg model.state pageModel of 
            (model_, pageModel_, pageCmd ) -> 
              (Model { model | state = model_, route = State__Http pageModel_ }, Cmd.map Msg__Http pageCmd)
        
        _ -> (Model model, Cmd.none)

    Msg__Minimum pageMsg -> 
      case model.route of 
        State__Minimum pageModel -> 
          case Minimum.page.update pageMsg model.state pageModel of 
            (model_, pageModel_, pageCmd ) -> 
              (Model { model | state = model_, route = State__Minimum pageModel_ }, Cmd.map Msg__Minimum pageCmd)
        
        _ -> (Model model, Cmd.none)

    Msg__NotFound pageMsg -> 
      case model.route of 
        State__NotFound pageModel -> 
          case NotFound.page.update pageMsg model.state pageModel of 
            (model_, pageModel_, pageCmd ) -> 
              (Model { model | state = model_, route = State__NotFound pageModel_ }, Cmd.map Msg__NotFound pageCmd)
        
        _ -> (Model model, Cmd.none)

    Msg__Preferences pageMsg -> 
      case model.route of 
        State__Preferences pageModel -> 
          case Preferences.page.update pageMsg model.state pageModel of 
            (model_, pageModel_, pageCmd ) -> 
              (Model { model | state = model_, route = State__Preferences pageModel_ }, Cmd.map Msg__Preferences pageCmd)
        
        _ -> (Model model, Cmd.none)

    Msg__Time pageMsg -> 
      case model.route of 
        State__Time pageModel -> 
          case Time.page.update pageMsg model.state pageModel of 
            (model_, pageModel_, pageCmd ) -> 
              (Model { model | state = model_, route = State__Time pageModel_ }, Cmd.map Msg__Time pageCmd)
        
        _ -> (Model model, Cmd.none)

    Msg__Top pageMsg -> 
      case model.route of 
        State__Top pageModel -> 
          case Top.page.update pageMsg model.state pageModel of 
            (model_, pageModel_, pageCmd ) -> 
              (Model { model | state = model_, route = State__Top pageModel_ }, Cmd.map Msg__Top pageCmd)
        
        _ -> (Model model, Cmd.none)

    Msg__URLParsing pageMsg -> 
      case model.route of 
        State__URLParsing pageModel -> 
          case URLParsing.page.update pageMsg model.state pageModel of 
            (model_, pageModel_, pageCmd ) -> 
              (Model { model | state = model_, route = State__URLParsing pageModel_ }, Cmd.map Msg__URLParsing pageCmd)
        
        _ -> (Model model, Cmd.none)

documentMap : (msg -> Msg) -> Document msg -> Document Msg
documentMap f { title, body } = { title = title, body = List.map (Html.map f) body }

view : Model -> Document Msg
view (Model model) = case model.route of 

  State__Counter m -> documentMap Msg__Counter (let page = Counter.page in page.view model.state m)
  State__Http m -> documentMap Msg__Http (let page = Http.page in page.view model.state m)
  State__Minimum m -> documentMap Msg__Minimum (let page = Minimum.page in page.view model.state m)
  State__NotFound m -> documentMap Msg__NotFound (let page = NotFound.page in page.view model.state m)
  State__Preferences m -> documentMap Msg__Preferences (let page = Preferences.page in page.view model.state m)
  State__Time m -> documentMap Msg__Time (let page = Time.page in page.view model.state m)
  State__Top m -> documentMap Msg__Top (let page = Top.page in page.view model.state m)
  State__URLParsing m -> documentMap Msg__URLParsing (let page = URLParsing.page in page.view model.state m)

matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ UrlParser.map Route__Counter (let page = Counter.page in page.route)
        , UrlParser.map Route__Http (let page = Http.page in page.route)
        , UrlParser.map Route__Minimum (let page = Minimum.page in page.route)
        , UrlParser.map Route__NotFound (let page = NotFound.page in page.route)
        , UrlParser.map Route__Preferences (let page = Preferences.page in page.route)
        , UrlParser.map Route__Time (let page = Time.page in page.route)
        , UrlParser.map Route__Top (let page = Top.page in page.route)
        , UrlParser.map Route__URLParsing (let page = URLParsing.page in page.route)
        ]   

parseLocation : Url -> Route
parseLocation location =
    case parse matchers location of
        Just route ->
            route

        Nothing ->
            Route__NotFound ()

navigate : Url -> Msg 
navigate = Navigate

init : Root.Flags -> Url -> Key -> ( Model, Cmd Msg )
init flags location key = 
  let route = parseLocation location in 
    case Root.init flags location key of 
      (rootInitialModel, rootInitialCmd) -> 
        case route of

          Route__Counter routeValue -> case let page = Counter.page in page.init location routeValue rootInitialModel of
                (initialModel, initialCmd) -> 
                    ( Model 
                        { route = State__Counter initialModel
                        , state = rootInitialModel
                        , key = key
                        }
                    , Cmd.batch 
                      [ Cmd.map Msg__Root rootInitialCmd
                      , Cmd.map Msg__Counter initialCmd
                      ]
                    )
                
          Route__Http routeValue -> case let page = Http.page in page.init location routeValue rootInitialModel of
                (initialModel, initialCmd) -> 
                    ( Model 
                        { route = State__Http initialModel
                        , state = rootInitialModel
                        , key = key
                        }
                    , Cmd.batch 
                      [ Cmd.map Msg__Root rootInitialCmd
                      , Cmd.map Msg__Http initialCmd
                      ]
                    )
                
          Route__Minimum routeValue -> case let page = Minimum.page in page.init location routeValue rootInitialModel of
                (initialModel, initialCmd) -> 
                    ( Model 
                        { route = State__Minimum initialModel
                        , state = rootInitialModel
                        , key = key
                        }
                    , Cmd.batch 
                      [ Cmd.map Msg__Root rootInitialCmd
                      , Cmd.map Msg__Minimum initialCmd
                      ]
                    )
                
          Route__NotFound routeValue -> case let page = NotFound.page in page.init location routeValue rootInitialModel of
                (initialModel, initialCmd) -> 
                    ( Model 
                        { route = State__NotFound initialModel
                        , state = rootInitialModel
                        , key = key
                        }
                    , Cmd.batch 
                      [ Cmd.map Msg__Root rootInitialCmd
                      , Cmd.map Msg__NotFound initialCmd
                      ]
                    )
                
          Route__Preferences routeValue -> case let page = Preferences.page in page.init location routeValue rootInitialModel of
                (initialModel, initialCmd) -> 
                    ( Model 
                        { route = State__Preferences initialModel
                        , state = rootInitialModel
                        , key = key
                        }
                    , Cmd.batch 
                      [ Cmd.map Msg__Root rootInitialCmd
                      , Cmd.map Msg__Preferences initialCmd
                      ]
                    )
                
          Route__Time routeValue -> case let page = Time.page in page.init location routeValue rootInitialModel of
                (initialModel, initialCmd) -> 
                    ( Model 
                        { route = State__Time initialModel
                        , state = rootInitialModel
                        , key = key
                        }
                    , Cmd.batch 
                      [ Cmd.map Msg__Root rootInitialCmd
                      , Cmd.map Msg__Time initialCmd
                      ]
                    )
                
          Route__Top routeValue -> case let page = Top.page in page.init location routeValue rootInitialModel of
                (initialModel, initialCmd) -> 
                    ( Model 
                        { route = State__Top initialModel
                        , state = rootInitialModel
                        , key = key
                        }
                    , Cmd.batch 
                      [ Cmd.map Msg__Root rootInitialCmd
                      , Cmd.map Msg__Top initialCmd
                      ]
                    )
                
          Route__URLParsing routeValue -> case let page = URLParsing.page in page.init location routeValue rootInitialModel of
                (initialModel, initialCmd) -> 
                    ( Model 
                        { route = State__URLParsing initialModel
                        , state = rootInitialModel
                        , key = key
                        }
                    , Cmd.batch 
                      [ Cmd.map Msg__Root rootInitialCmd
                      , Cmd.map Msg__URLParsing initialCmd
                      ]
                    )
                

subscriptions : Model -> Sub Msg
subscriptions (Model model) = 
    Sub.batch
        (Sub.map Msg__Root Root.subscriptions :: [ Sub.map Msg__Counter (let page = Counter.page in page.subscriptions model.state)
        , Sub.map Msg__Http (let page = Http.page in page.subscriptions model.state)
        , Sub.map Msg__Minimum (let page = Minimum.page in page.subscriptions model.state)
        , Sub.map Msg__NotFound (let page = NotFound.page in page.subscriptions model.state)
        , Sub.map Msg__Preferences (let page = Preferences.page in page.subscriptions model.state)
        , Sub.map Msg__Time (let page = Time.page in page.subscriptions model.state)
        , Sub.map Msg__Top (let page = Top.page in page.subscriptions model.state)
        , Sub.map Msg__URLParsing (let page = URLParsing.page in page.subscriptions model.state)  
        ])


program : Program Root.Flags Model Msg
program =
    application
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        , onUrlRequest = UrlRequest
        , onUrlChange = Navigate
        }
        


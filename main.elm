import Html exposing (Html, button, div, input, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick, onInput)


main =
  Html.beginnerProgram { model = model, view = view, update = update }


-- MODEL

type alias DocumentDescription = {
  templateGuid : String,
  documentName : String
}

type alias Model = {
  kntnr : String,
  anlass : String,
  grund : String,
  orgeinheit : String,
  availableTemplates : List DocumentDescription,
  selectedTemplate : DocumentDescription
}

model : Model
model =
  { kntnr = "0815",
  anlass  = "000061",
  grund = "610002",
  orgeinheit = "ECSOMMC000",
  availableTemplates = [],
  selectedTemplate =
    { templateGuid = "",
    documentName = "none"
    }
  }

-- UPDATE

type Msg = Increment | Decrement

update : Msg -> Model -> Model
update msg model =
  model


-- VIEW

view : Model -> Html Msg
view model =
  div []
    [  text model.kntnr ]

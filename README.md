# MustacheViewEngine

Mustache render engine for Slimane

## Usage

```swift
import Slimane

let app = Slimane()

app.get("/") { req, responder in
  responder {
      let render = Render(engine: MustacheViewEngine(templateData: ["name": "Slimane"]), path: "index")
      Response(custom: render)
  }
}
```

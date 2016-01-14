





### Points:

- router
  add routes for webpack controller (proxy)

```elixir
if Mix.env == :dev do
  scope "/static", Front do
    pipe_through :api
    get "/:req", WebPackController, :hot_update
  end
end
```

- Webpack Proxy Controller

```
defmodule Front.WebPackController do
  use Phoenix.Controller
  @webpack_url "http://localhost:3000/static/"

  def hot_update(conn, params) do
    req = Map.get(params, "req")
    res = HTTPoison.get! @webpack_url <> req
    text conn, res.body
  end
end
```

- endpoint

```elixir
    plug Plug.Static,
      at: "/", from: :back, gzip: false,
      only: ~w(css fonts images js webpack favicon.ico robots.txt)

```

- dev.exs
  Configure Watcher:

```elixir
webpack_args = [Path.expand("assets/node_modules/.bin/webpack-dev-server"),
    "--port=3000",
    "--history-api-fallback",
    "--hot",
    "--progress",
    "--inline",
    "--colors",
    "--stdin", ## so it will stop, when stdin from phoenix is closed
]
if IEx.started?, do: webpack_args = List.delete(webpack_args, "--progress")

config :front, Front.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  root: Path.expand("..", __DIR__) <> "/assets", #we need to be in the assets folder...
  watchers: [
    "node": webpack_args,
  ]
```

- Mix:
  - add task for asset digesting

in lib/mix/tasks.ex
```elixir
defmodule Mix.Tasks.MyApp.Digest do
  use Mix.Task

  def run(args) do
    Mix.Shell.IO.cmd "cd assets && npm run build"
    :ok = Mix.Tasks.Phoenix.Digest.run(args)
  end
end
```
in mix.exs

```elixir
defp aliases do
  [
    ....#
    "phoenix.digest": ["my_app.digest"]
  ]
end
```

  applications:
    - add :httpoison to be started


- view
  - layout view

      def styles_bundle(conn) do
        make_path(conn, "vendor_styles-bundle.js")
      end

      def js_bundle(conn) do
        make_path(conn, "js-bundle.js")
      end

      defp make_path(conn, asset) do
        if Mix.env == :dev do
          "http://localhost:3000/static/" <> asset
        else
          Back.Router.Helpers.static_path(conn, "/webpack/" <> asset)
        end
      end

templates:
  - use helpers in layout

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Front - React</title>
    <script src="<%= styles_bundle(@conn) %>"></script>
  </head>

  <body>
    <div id="root" class="container">
    </div> <!-- /container -->
    <script src='<%= js_bundle(@conn) %>'></script>
  </body>
</html>
```









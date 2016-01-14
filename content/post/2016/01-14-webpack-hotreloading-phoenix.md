+++
date = "2016-01-14T18:36:00+01:00"
draft = false
title = "Webpack Hot-Reloading with Phoenix"
author = "mindreframer"
+++





<blockquote>
  this is just a reminder without proper comments...
</blockquote>


### Steps to enable Webpack + hot-reloding in Phoenix:

- Router: add routes for webpack controller (proxy)

```elixir
if Mix.env == :dev do
  scope "/static", Front do
    pipe_through :api
    get "/:req", WebPackController, :hot_update
  end
end
```

- Webpack Proxy Controller (web/controllers/web_pack_controller.ex)

```elixir
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

- Endpoint: adjust static Plug to include webpack

```elixir
    plug Plug.Static,
      at: "/", from: :back, gzip: false,
      only: ~w(css fonts images js webpack favicon.ico robots.txt)

```

- Config: dev.exs - configure watchers:

```elixir
webpack_args = [Path.expand("assets/node_modules/.bin/webpack-dev-server"),
    "--port=3000",
    "--history-api-fallback",
    "--hot",
    "--progress",
    "--inline",
    "--colors",
    "--stdin", ## so it will stop, when stdin from phoenix is closed
               ## requires  https://github.com/webpack/webpack-dev-server/pull/352/files --> stdin, so probably >= 1.14.2
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

- Mix: add task for asset digesting (lib/mix/tasks.ex)

```elixir
defmodule Mix.Tasks.MyApp.Digest do
  use Mix.Task

  def run(args) do
    Mix.Shell.IO.cmd "cd assets && npm run build"
    :ok = Mix.Tasks.Phoenix.Digest.run(args)
  end
end
```




```elixir
in mix.exs
defp aliases do
  [
    ....#
    "phoenix.digest": ["my_app.digest"]
  ]
end

# add :httpoison to be started
defp applications(:dev) do
  [:httpoison] + applications(:prod)
end

defp applications(_) do
  [....]
end
```


- Views
  - layout_view.ex

```elixir
defmodule Front.LayoutView do
  use Front.Web, :view

  def styles_bundle(conn) do
    make_path(conn, "vendor_styles-bundle.js")
  end

  def js_bundle(conn) do
    make_path(conn, "js-bundle.js")
  end

  # enables hot-reloadable URLs in development
  defp make_path(conn, asset) do
    if Mix.env == :dev do
      "http://localhost:3000/static/" <> asset
    else
      Front.Router.Helpers.static_path(conn, "/webpack/" <> asset)
    end
  end
end
```

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




## Gotchas:


```bash
Error: ENOENT: no such file or directory, open '.../node_modules/webpack-dev-server/client/live.bundle.js'
at Error (native)

```
- https://github.com/webpack/webpack-dev-server/issues/59

```bash
cd node_modules/webpack-dev-server && npm run-script prepublish
```

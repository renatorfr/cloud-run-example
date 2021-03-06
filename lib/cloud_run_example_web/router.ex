defmodule CloudRunExampleWeb.Router do
  use Phoenix.Router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  pipeline :browser do
    plug(:accepts, ["html", "json"])
    plug(:fetch_session)
    plug(:fetch_flash)
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
    plug(:put_layout, {CloudRunExampleWeb.Layouts.View, :app})
  end

  scope "/", CloudRunExampleWeb do
    pipe_through(:browser)

    get("/", Home.Controller, :index, as: :home)
  end
end

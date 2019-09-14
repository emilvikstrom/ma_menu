defmodule MaMenuWeb.Router do
  use MaMenuWeb, :router

  pipeline :browser do
    plug(:accepts, ["html", "json"])
    plug(:fetch_session)
    plug(:fetch_flash)
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
  end

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", MaMenuWeb do
    pipe_through(:browser)

    get("/", PageController, :index)
    get("/menu", MenuController, :menu)
    post("/menu", MenuController, :update)
    get("/menu/:messenger", MenuController, :show)
  end

  # Other scopes may use custom stacks.
  # scope "/api", MaMenuWeb do
  #   pipe_through :api
  # end
end

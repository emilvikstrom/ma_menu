defmodule MaMenuWeb.MenuController do
  use MaMenuWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    IO.inspect(messenger)
    render(conn, "show.html", messenger: messenger)
  end

  def menu(conn, _params) do
    [today, new, _] = MaMenuWeb.MenuGenServ.get_resturants()
    render(conn, "menu.html", tip: today, new: new)
  end

  def update(conn, params) do
    IO.inspect(params)
    render(conn, "index.html")
  end

  # def show(conn, %{"messenger" => messenger}) do
  # IO.puts("show")
  # render(conn, "show.html", messenger: messenger)
  # end

  # def show(conn, _) do
  #    IO.puts("show")
  #    render(conn, "index.html")
  # end
end

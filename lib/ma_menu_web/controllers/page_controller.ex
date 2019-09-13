defmodule MaMenuWeb.PageController do
  use MaMenuWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

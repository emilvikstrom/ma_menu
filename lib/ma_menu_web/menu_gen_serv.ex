defmodule MaMenuWeb.MenuGenServ do
  use GenServer

  def start_link([]) do
    GenServer.start_link(__MODULE__, [], name: :menuserv)
  end

  def get_resturants() do
    GenServer.call(:menuserv, :get)
  end

  @impl true
  def init([]) do
    # resturants = resturants()
    resturants = for r <- resturants(), do: create_resturant(r)
    {:ok, resturants}
  end

  @impl true
  def handle_call(:get, _from, state) do
    res = state |> Enum.shuffle() |> Enum.take(3)
    {:reply, res, state}
  end

  def handle_call(_, _, state) do
    {:reply, :ok, state}
  end

  def resturants() do
    [
      "Prime Burger",
      "Gandhi",
      "Harran",
      "Amida",
      "Dim Sum",
      "Thai Kiosk",
      "Deli di Luca",
      "Bipimbap",
      "Primo Ciao Ciao"
    ]
  end

  def create_resturant(name) do
    %{"name" => name, "visits" => 0}
  end
end

defmodule MaMenu.Repo do
  use Ecto.Repo,
    otp_app: :ma_menu,
    adapter: Ecto.Adapters.Postgres
end

# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ma_menu,
  ecto_repos: [MaMenu.Repo]

# Configures the endpoint
config :ma_menu, MaMenuWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Fdky8of8IbIR5yFZ1LW9mMJTEdDbx1EpoEjr7yyqsBJmq4KL+k3IjvstzuybmZFY",
  render_errors: [view: MaMenuWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MaMenu.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

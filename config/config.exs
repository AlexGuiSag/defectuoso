# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :user_stuffs_server,
  ecto_repos: [UserStuffsServer.Repo]

# Configures the endpoint
config :user_stuffs_server, UserStuffsServerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "F/oeu78mLiuWXW3ahjeUxVvFv2+tPE8hEXFEZrXEMWwdaog5KP60Z9HmoRFz4BwG",
  render_errors: [view: UserStuffsServerWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: UserStuffsServer.PubSub,
  live_view: [signing_salt: "6h0i2uYx"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

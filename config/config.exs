# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :liveapp,
  ecto_repos: [Liveapp.Repo]

# Configures the endpoint
config :liveapp, LiveappWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "emZAon24U8+GYZpXrzY5S87vyDLLDXoCSLngDXNZgNxGFqNXT34DJ7WOSJ4BTQju",
  render_errors: [view: LiveappWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Liveapp.PubSub,
  live_view: [signing_salt: "WpHkRyA2"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

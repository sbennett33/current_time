# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :current_time_web,
  namespace: CurrentTimeWeb

# Configures the endpoint
config :current_time_web, CurrentTimeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "25JCIeQr90MMR3Wzk4TwrXcypjah+zGsiKolmWQBhaMMmIFZSzWbCHu3qs87+g8B",
  render_errors: [view: CurrentTimeWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: CurrentTimeWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

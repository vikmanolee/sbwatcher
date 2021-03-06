# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :sbwatch, SbwatchWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "chZdohXffsRqs7TO7NqEfEB5TIfsmnz+E7pbIFpZRj3ffFD3VlIgNvVc6ShSNPsc",
  render_errors: [view: SbwatchWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Sbwatch.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "This_is_SBSTATE_Watch4"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix,
  json_library: Jason,
  template_engines: [leex: Phoenix.LiveView.Engine]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

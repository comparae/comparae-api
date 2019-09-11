# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :comparae,
  ecto_repos: [Comparae.Repo]

# Configures the endpoint
config :comparae, ComparaeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "P+RLw9G28vGT6riVOSxPyG4UBo9DVcLVOj6m28WeOTAKt7AEmy6Z0B7gu/W0VU++",
  render_errors: [view: ComparaeWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Comparae.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

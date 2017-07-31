# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :diff_layouts,
  ecto_repos: [DiffLayouts.Repo]

# Configures the endpoint
config :diff_layouts, DiffLayouts.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "B9nIwD0KcWVG9pLn5zGqWmFF4Taohn23ndL34ekqpGmHaSFMUecCe5GD3WvX9ddi",
  render_errors: [view: DiffLayouts.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DiffLayouts.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

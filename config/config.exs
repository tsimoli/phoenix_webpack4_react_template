# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_webpack4_react_template,
  ecto_repos: [PhoenixWebpack4ReactTemplate.Repo]

# Configures the endpoint
config :phoenix_webpack4_react_template, PhoenixWebpack4ReactTemplateWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mobaa27PmCm+fmYlrbe6IU2tcSZQxEebBrZFr08edGVbv/XcHGW5fIiJc/VqBbis",
  render_errors: [view: PhoenixWebpack4ReactTemplateWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixWebpack4ReactTemplate.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

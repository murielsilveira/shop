# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :shop,
  ecto_repos: [Shop.Repo]

# Configures the endpoint
config :shop, Shop.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1cmLmIzTr+aVv1G4UVBYliGZcV1EB1+zq4gyXYP8RsrN+oQh1TjNAPKnTFi2xy8C",
  render_errors: [view: Shop.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Shop.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

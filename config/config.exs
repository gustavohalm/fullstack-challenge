# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :fullstack_challenge,
  ecto_repos: [FullstackChallenge.Repo]

# Configures the endpoint
config :fullstack_challenge, FullstackChallengeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6i3UdxHpmQGbS/qEgteyE7dN6yAZt/lbv7mJEc/W6fXENFTdmYXQm9SIu+Euxw5q",
  render_errors: [view: FullstackChallengeWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FullstackChallenge.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

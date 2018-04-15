# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hero,
  ecto_repos: [Hero.Repo]

# Configures the endpoint
config :hero, HeroWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "koI8ToB4KlC9J+eCP3Sbqi8BUisgu0cJDtMTXRiY383uihlURznmz9xGYVJ2iS8U",
  render_errors: [view: HeroWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Hero.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

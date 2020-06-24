# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :shiryel_blog,
  ecto_repos: [ShiryelBlog.Repo]

# Configures the endpoint
config :shiryel_blog, ShiryelBlogWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ucLGtoymTcDaR0TdLIW2i80Bxzb6lg+yhllI666UP8n4IdNnfT+CuNT9nczwErdz",
  render_errors: [view: ShiryelBlogWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ShiryelBlog.PubSub,
  live_view: [signing_salt: "wENmuzMF"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

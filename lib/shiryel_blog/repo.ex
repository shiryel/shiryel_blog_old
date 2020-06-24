defmodule ShiryelBlog.Repo do
  use Ecto.Repo,
    otp_app: :shiryel_blog,
    adapter: Ecto.Adapters.Postgres
end

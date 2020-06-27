defmodule ShiryelBlogWeb.SitemapController do
  use ShiryelBlogWeb, :controller

  plug :put_root_layout, false

  # WHILE NOT IN DB:
  @posts [
    %{post_id: "how-to-add-svelte-on-elixir-phoenix-framework",
      name: "Svelte S2 Phoenix",
      description: "How to add Svelte on Elixir Phoenix Framework",
      tags: ["elixir", "svelte", "tricks and tips"]
    }
  ]

  def index(conn, _params) do
    conn
    |> put_resp_content_type("text/xml")
    |> render("index.xml", posts: @posts)
  end
end

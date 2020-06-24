defmodule ShiryelBlogWeb.PageLive do
  use ShiryelBlogWeb, :live_view

  # WHILE NOT IN DB:
  @posts [
    %{post_id: "how-to-add-svelte-on-elixir-phoenix-framework.md",
      name: "Svelte S2 Phoenix",
      description: "How to add Svelte on Elixir Phoenix Framework",
      tags: ["elixir", "svelte", "tricks and tips"]
    }
  ]

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, posts: @posts)}
  end
end

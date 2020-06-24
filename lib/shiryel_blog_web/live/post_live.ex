defmodule ShiryelBlogWeb.PostLive do
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
  def mount(%{"post_id" => post_id}, _session, socket) do
    post = Enum.find(@posts, fn x -> x.post_id == post_id end)

    {:ok, assign(socket, post: post, posts: @posts)}
  end
end

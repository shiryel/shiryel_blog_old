defmodule ShiryelBlogWeb.SitemapView do
  use ShiryelBlogWeb, :view

  def format_date(date) do
    date
    |> DateTime.from_naive!("Etc/UTC")
    |> DateTime.to_date()
    |> to_string()
  end
end

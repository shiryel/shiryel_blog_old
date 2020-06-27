defmodule ShiryelBlogWeb.SitemapViewTest do
  use ShiryelBlogWeb.ConnCase, async: true
  alias ShiryelBlogWeb.SitemapView

  test "format_date/1" do
    assert SitemapView.format_date(~N[2019-07-08 13:15:00]) == "2019-07-08"
  end
end

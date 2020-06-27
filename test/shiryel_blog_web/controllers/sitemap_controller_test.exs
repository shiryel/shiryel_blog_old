defmodule ShiryelBlogWeb.SitemapControllerTest do
  use ShiryelBlogWeb.ConnCase

  describe "GET /sitemap.xml" do
    test "accesses the sitemap in format xml", %{conn: conn} do
      conn = get(conn, "/sitemap.xml")
      assert response_content_type(conn, :xml)
      assert response(conn, 200) =~ ~r/<loc>.*<\/loc>/
    end
  end
end

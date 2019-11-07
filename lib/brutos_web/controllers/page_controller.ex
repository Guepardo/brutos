defmodule BrutosWeb.PageController do
  use BrutosWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

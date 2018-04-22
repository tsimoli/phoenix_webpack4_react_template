defmodule PhoenixWebpack4ReactTemplateWeb.PageController do
  use PhoenixWebpack4ReactTemplateWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

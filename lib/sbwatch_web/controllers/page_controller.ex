defmodule SbwatchWeb.PageController do
  use SbwatchWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

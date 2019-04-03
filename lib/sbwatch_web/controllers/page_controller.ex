defmodule SbwatchWeb.PageController do
  use SbwatchWeb, :controller

  def index(conn, _) do
    LiveView.Controller.live_render(conn, MyAppWeb.GithubDeployView, session: %{})
  end

  def index_all(conn, _params) do
    render(conn, "index.html")
  end
end

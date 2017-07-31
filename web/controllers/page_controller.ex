defmodule DiffLayouts.PageController do
  use DiffLayouts.Web, :controller

  def index(conn, _params) do
    oxleas = DiffLayouts.OxleasLayoutView
    healthlocker = DiffLayouts.HealthlockerLayoutView
    layout = healthlocker
    conn
    |> put_layout({layout, "app.html"})
    |> render "index.html"
  end
end

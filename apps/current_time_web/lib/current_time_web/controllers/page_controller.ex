defmodule CurrentTimeWeb.PageController do
  use CurrentTimeWeb, :controller

  def show(conn, _params) do
    conn
    |> json(%{current_time: CurrentTime.get()})
  end
end

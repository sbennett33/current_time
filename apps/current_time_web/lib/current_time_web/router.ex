defmodule CurrentTimeWeb.Router do
  use CurrentTimeWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", CurrentTimeWeb do
    pipe_through :api

    get "/", PageController, :show
  end
end

defmodule ComparaeWeb.Router do
  use ComparaeWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ComparaeWeb do
    pipe_through :api
  end
end

defmodule ComparaeWeb.Router do
  use ComparaeWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ComparaeWeb do
    pipe_through :api
  end

  scope "/" do
    pipe_through :api

    forward "/graphql", Absinthe.Plug,
      schema: BookselfWeb.GraphQL.Schema

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: BookselfWeb.GraphQL.Schema
  end
end

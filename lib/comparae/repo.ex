defmodule Comparae.Repo do
  use Ecto.Repo,
    otp_app: :comparae,
    adapter: Ecto.Adapters.Postgres
end

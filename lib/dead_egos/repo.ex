defmodule DeadEgos.Repo do
  use Ecto.Repo,
    otp_app: :dead_egos,
    adapter: Ecto.Adapters.Postgres
end

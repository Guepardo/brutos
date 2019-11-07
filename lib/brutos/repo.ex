defmodule Brutos.Repo do
  use Ecto.Repo,
    otp_app: :brutos,
    adapter: Ecto.Adapters.Postgres
end

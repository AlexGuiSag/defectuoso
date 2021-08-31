defmodule UserStuffsServer.Repo do
  use Ecto.Repo,
    otp_app: :user_stuffs_server,
    adapter: Ecto.Adapters.Postgres
end

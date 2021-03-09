defmodule OracleApi.Repo do
  use Ecto.Repo,
    otp_app: :oracle_api,
    adapter: Ecto.Adapters.Jamdb.Oracle
end

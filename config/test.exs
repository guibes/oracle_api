use Mix.Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :oracle_api, OracleApi.Repo,
  username: "elixir_user",
  password: "elixir_password",
  database: "ORCLCDB.localdomain#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  port: 1521

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :oracle_api, OracleApiWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

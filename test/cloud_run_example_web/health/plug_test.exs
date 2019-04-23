defmodule CloudRunExampleWeb.Health.PlugTest do
  use CloudRunExampleWeb.ConnCase

  test "GET /health", %{conn: conn} do
    conn = get(conn, "/health")

    # credo:disable-for-next-line CredoEnvvar.Check.Warning.EnvironmentVariablesAtCompileTime
    version = Application.get_env(:cloud_run_example, :version)

    assert json_response(conn, 200) == %{
             "status" => "ok",
             "version" => version
           }
  end
end

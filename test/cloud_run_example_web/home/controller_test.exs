defmodule CloudRunExampleWeb.Home.ControllerTest do
  use CloudRunExampleWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "The system looks OK."
  end
end

defmodule Tourism.UsersControllerTest do
  use Tourism.ConnCase
  import Tourism.Factory

  test "#index.json", %{conn: conn} do
    user = insert :user
    conn = get conn, "/api/users"
    assert json_response(conn, 200) == %{
      "users" => [%{
        "name" => user.name,
        "email" => user.email,
        "from_where" => user.from_where,
        "latitude" => user.latitude,
        "longitude" => user.longitude
      }]
    }
  end
end

defmodule Tourism.UsersController do
  use Tourism.Web, :controller

  alias Tourism.User

  def index(conn, _params) do
    users = Repo.all(User)
    render conn, "index.json", users: users
  end
end

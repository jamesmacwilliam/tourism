defmodule Tourism.UsersView do
  use Tourism.Web, :view

  def render("index.json", %{users: users}) do
    %{
      users: Enum.map(users, &user_json/1)
    }
  end

  def user_json(user) do
    %{
      name: user.name,
      email: user.email,
      from_where: user.from_where,
      latitude: user.latitude,
      longitude: user.longitude
    }
  end
end

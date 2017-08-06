defmodule Tourism.UsersViewTest do
  use Tourism.ModelCase
  import Tourism.Factory
  alias Tourism.UsersView

  test "#user_json" do
    user = insert :user
    assert UsersView.user_json(user) == %{
      name: user.name,
      email: user.email,
      from_where: user.from_where,
      latitude: user.latitude,
      longitude: user.longitude
    }
  end
end

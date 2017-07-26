defmodule Tourism.UserTest do
  use Tourism.ModelCase

  alias Tourism.User

  @valid_attrs %{email: "some content", from_where: "some content", latitude: "120.5", longitude: "120.5", name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end

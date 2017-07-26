defmodule Tourism.User do
  use Tourism.Web, :model

  schema "users" do
    field :name, :string
    field :email, :string
    field :from_where, :string
    field :latitude, :float
    field :longitude, :float

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :email, :from_where, :latitude, :longitude])
    |> validate_required([:name, :email, :from_where, :latitude, :longitude])
  end
end

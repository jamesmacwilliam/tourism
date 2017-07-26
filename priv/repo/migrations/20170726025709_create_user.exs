defmodule Tourism.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :text
      add :email, :text
      add :from_where, :text
      add :latitude, :float
      add :longitude, :float

      timestamps()
    end

  end
end

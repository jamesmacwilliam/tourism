# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs

Faker.start

{:ok, _} = Application.ensure_all_started(:ex_machina)

defmodule Tourism.DatabaseSeeder do
  import Tourism.Factory

  def seed do
    seed_users
  end

  def clear do
    Repo.delete_all
  end


  defp seed_users do
    insert_list 20, :user
  end
end

Tourism.DatabaseSeeder.seed

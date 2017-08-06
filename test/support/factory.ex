defmodule Tourism.Factory do
  use ExMachina.Ecto, repo: Tourism.Repo

  def user_factory do
    %Tourism.User{
      name: Faker.Name.name,
      email: Faker.Internet.email,
      from_where: Faker.Address.state,
      longitude: Faker.Address.longitude,
      latitude: Faker.Address.latitude
    }
  end
end

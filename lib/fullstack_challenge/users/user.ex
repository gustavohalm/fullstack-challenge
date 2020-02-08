defmodule FullstackChallenge.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :credits, :float
    field :name, :string
    field :password, :string
    field :username, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :username, :password, :credits])
    |> validate_required([:name, :username, :password, :credits])
    |> unique_constraint(:username)
  end
end

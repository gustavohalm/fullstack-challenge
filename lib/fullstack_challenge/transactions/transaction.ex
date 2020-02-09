defmodule FullstackChallenge.Transactions.Transaction do
  use Ecto.Schema
  import Ecto.Changeset

  schema "transactions" do
    field :value, :float
    field :sender, :id
    field :receiver, :id

    timestamps()
  end

  @doc false
  def changeset(transaction, attrs) do
    transaction
    |> cast(attrs, [:value])
    |> validate_required([:value])
  end
end

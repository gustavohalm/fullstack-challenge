defmodule FullstackChallenge.Repo.Migrations.CreateTransactions do
  use Ecto.Migration

  def change do
    create table(:transactions) do
      add :value, :float
      add :sender, references(:users, on_delete: :nothing)
      add :receiver, references(:users, on_delete: :nothing)

      timestamps()
    end

    create index(:transactions, [:sender])
    create index(:transactions, [:receiver])
  end
end

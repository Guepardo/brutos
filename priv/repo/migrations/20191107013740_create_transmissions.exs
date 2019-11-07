defmodule Brutos.Repo.Migrations.CreateTransmissions do
  use Ecto.Migration

  def change do
    create table(:transmissions) do
      add :ref_id, :string

      timestamps()
    end
  end
end

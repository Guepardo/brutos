defmodule Brutos.Transmission do
  use Ecto.Schema
  import Ecto.Changeset

  schema "transmissions" do
    field :ref_id, :string

    timestamps()
  end

  @doc false
  def changeset(transmission, attrs) do
    transmission
    |> cast(attrs, [:ref_id])
    |> validate_required([:ref_id])
  end
end

defmodule MmPicker.Numbers.Mega do
  use Ecto.Schema
  import Ecto.Changeset

  schema "number_mega" do
    field :number, :integer

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(mega, attrs) do
    mega
    |> cast(attrs, [:number])
    |> validate_required([:number])
  end
end

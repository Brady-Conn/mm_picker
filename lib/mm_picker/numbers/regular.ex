defmodule MmPicker.Numbers.Regular do
  use Ecto.Schema
  import Ecto.Changeset

  schema "number_regular" do
    field :number, :integer

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(regular, attrs) do
    regular
    |> cast(attrs, [:number])
    |> validate_required([:number])
  end
end

defmodule MmPicker.Winners.WinningNumbers do
  use Ecto.Schema
  import Ecto.Changeset
  alias MmPicker.Numbers.{Regular, Mega}

  schema "winning_numbers" do
    field :date, :date
    has_many :regular, Regular
    has_one :mega, Mega

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(winning_numbers, attrs) do
    winning_numbers
    |> cast(attrs, [:date])
    |> validate_required([:date])
  end
end

defmodule MmPicker.WinnersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `MmPicker.Winners` context.
  """

  @doc """
  Generate a winning_numbers.
  """
  def winning_numbers_fixture(attrs \\ %{}) do
    {:ok, winning_numbers} =
      attrs
      |> Enum.into(%{
        date: ~D[2024-09-12]
      })
      |> MmPicker.Winners.create_winning_numbers()

    winning_numbers
  end
end

defmodule MmPicker.NumbersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `MmPicker.Numbers` context.
  """

  @doc """
  Generate a regular.
  """
  def regular_fixture(attrs \\ %{}) do
    {:ok, regular} =
      attrs
      |> Enum.into(%{
        number: 42
      })
      |> MmPicker.Numbers.create_regular()

    regular
  end

  @doc """
  Generate a mega.
  """
  def mega_fixture(attrs \\ %{}) do
    {:ok, mega} =
      attrs
      |> Enum.into(%{
        number: 42
      })
      |> MmPicker.Numbers.create_mega()

    mega
  end
end

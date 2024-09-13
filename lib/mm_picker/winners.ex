defmodule MmPicker.Winners do
  @moduledoc """
  The Winners context.
  """

  import Ecto.Query, warn: false
  alias MmPicker.Repo

  alias MmPicker.Winners.WinningNumbers

  @doc """
  Returns the list of winning_numbers.

  ## Examples

      iex> list_winning_numbers()
      [%WinningNumbers{}, ...]

  """
  def list_winning_numbers do
    Repo.all(WinningNumbers)
  end

  @doc """
  Gets a single winning_numbers.

  Raises `Ecto.NoResultsError` if the Winning numbers does not exist.

  ## Examples

      iex> get_winning_numbers!(123)
      %WinningNumbers{}

      iex> get_winning_numbers!(456)
      ** (Ecto.NoResultsError)

  """
  def get_winning_numbers!(id), do: Repo.get!(WinningNumbers, id)

  @doc """
  Creates a winning_numbers.

  ## Examples

      iex> create_winning_numbers(%{field: value})
      {:ok, %WinningNumbers{}}

      iex> create_winning_numbers(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_winning_numbers(attrs \\ %{}) do
    %WinningNumbers{}
    |> WinningNumbers.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a winning_numbers.

  ## Examples

      iex> update_winning_numbers(winning_numbers, %{field: new_value})
      {:ok, %WinningNumbers{}}

      iex> update_winning_numbers(winning_numbers, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_winning_numbers(%WinningNumbers{} = winning_numbers, attrs) do
    winning_numbers
    |> WinningNumbers.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a winning_numbers.

  ## Examples

      iex> delete_winning_numbers(winning_numbers)
      {:ok, %WinningNumbers{}}

      iex> delete_winning_numbers(winning_numbers)
      {:error, %Ecto.Changeset{}}

  """
  def delete_winning_numbers(%WinningNumbers{} = winning_numbers) do
    Repo.delete(winning_numbers)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking winning_numbers changes.

  ## Examples

      iex> change_winning_numbers(winning_numbers)
      %Ecto.Changeset{data: %WinningNumbers{}}

  """
  def change_winning_numbers(%WinningNumbers{} = winning_numbers, attrs \\ %{}) do
    WinningNumbers.changeset(winning_numbers, attrs)
  end
end

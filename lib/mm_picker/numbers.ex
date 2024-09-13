defmodule MmPicker.Numbers do
  @moduledoc """
  The Numbers context.
  """

  import Ecto.Query, warn: false
  alias MmPicker.Repo

  alias MmPicker.Numbers.Regular

  @doc """
  Returns the list of number_regular.

  ## Examples

      iex> list_number_regular()
      [%Regular{}, ...]

  """
  def list_number_regular do
    Repo.all(Regular)
  end

  @doc """
  Gets a single regular.

  Raises `Ecto.NoResultsError` if the Regular does not exist.

  ## Examples

      iex> get_regular!(123)
      %Regular{}

      iex> get_regular!(456)
      ** (Ecto.NoResultsError)

  """
  def get_regular!(id), do: Repo.get!(Regular, id)

  @doc """
  Creates a regular.

  ## Examples

      iex> create_regular(%{field: value})
      {:ok, %Regular{}}

      iex> create_regular(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_regular(attrs \\ %{}) do
    %Regular{}
    |> Regular.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a regular.

  ## Examples

      iex> update_regular(regular, %{field: new_value})
      {:ok, %Regular{}}

      iex> update_regular(regular, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_regular(%Regular{} = regular, attrs) do
    regular
    |> Regular.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a regular.

  ## Examples

      iex> delete_regular(regular)
      {:ok, %Regular{}}

      iex> delete_regular(regular)
      {:error, %Ecto.Changeset{}}

  """
  def delete_regular(%Regular{} = regular) do
    Repo.delete(regular)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking regular changes.

  ## Examples

      iex> change_regular(regular)
      %Ecto.Changeset{data: %Regular{}}

  """
  def change_regular(%Regular{} = regular, attrs \\ %{}) do
    Regular.changeset(regular, attrs)
  end

  alias MmPicker.Numbers.Mega

  @doc """
  Returns the list of number_mega.

  ## Examples

      iex> list_number_mega()
      [%Mega{}, ...]

  """
  def list_number_mega do
    Repo.all(Mega)
  end

  @doc """
  Gets a single mega.

  Raises `Ecto.NoResultsError` if the Mega does not exist.

  ## Examples

      iex> get_mega!(123)
      %Mega{}

      iex> get_mega!(456)
      ** (Ecto.NoResultsError)

  """
  def get_mega!(id), do: Repo.get!(Mega, id)

  @doc """
  Creates a mega.

  ## Examples

      iex> create_mega(%{field: value})
      {:ok, %Mega{}}

      iex> create_mega(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_mega(attrs \\ %{}) do
    %Mega{}
    |> Mega.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a mega.

  ## Examples

      iex> update_mega(mega, %{field: new_value})
      {:ok, %Mega{}}

      iex> update_mega(mega, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_mega(%Mega{} = mega, attrs) do
    mega
    |> Mega.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a mega.

  ## Examples

      iex> delete_mega(mega)
      {:ok, %Mega{}}

      iex> delete_mega(mega)
      {:error, %Ecto.Changeset{}}

  """
  def delete_mega(%Mega{} = mega) do
    Repo.delete(mega)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking mega changes.

  ## Examples

      iex> change_mega(mega)
      %Ecto.Changeset{data: %Mega{}}

  """
  def change_mega(%Mega{} = mega, attrs \\ %{}) do
    Mega.changeset(mega, attrs)
  end
end

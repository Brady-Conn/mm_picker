defmodule MmPicker.Repo.Migrations.CreateWinningNumbers do
  use Ecto.Migration

  def change do
    create table(:winning_numbers) do
      add :date, :date
      add :number_regular_id, references(:number_regular, on_delete: :nothing)
      add :number_mega_id, references(:number_mega, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end
  end
end

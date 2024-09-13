defmodule MmPicker.Repo.Migrations.CreateNumberMega do
  use Ecto.Migration

  def change do
    create table(:number_mega) do
      add :number, :integer

      timestamps(type: :utc_datetime)
    end
  end
end

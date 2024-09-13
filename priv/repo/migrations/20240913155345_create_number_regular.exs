defmodule MmPicker.Repo.Migrations.CreateNumberRegular do
  use Ecto.Migration

  def change do
    create table(:number_regular) do
      add :number, :integer

      timestamps(type: :utc_datetime)
    end
  end
end

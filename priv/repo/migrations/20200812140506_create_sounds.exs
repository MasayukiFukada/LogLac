defmodule LogLac.Repo.Migrations.CreateSounds do
  use Ecto.Migration

  def change do
    create table(:sounds) do
      add :date, :utc_datetime, null: false
      add :value, :integer, null: false

      add :device_code, references(:devices, column: :code, type: :string, on_delete: :nothing),
        null: false

      add :sensor_code, references(:sensors, column: :code, type: :string, on_delete: :nothing),
        null: false

      timestamps()
    end

    create index(:sounds, [:device_code])
    create index(:sounds, [:sensor_code])
  end
end

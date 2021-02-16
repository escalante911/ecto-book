defmodule Books.Repo.Migrations.CreateWeather do
  use Ecto.Migration

  def change do
    create table(:weather) do
      add :city,  :string    # Defaults to type :string
      add :temp_lo, :integer
      add :temp_hi, :integer
      add :prcp,    :float, default: 0.0
    end

  end
end

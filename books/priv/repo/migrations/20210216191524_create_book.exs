defmodule Books.Repo.Migrations.CreateBook do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :name, :string
      add :author, :string
      add :year, :string
    end

  end
end

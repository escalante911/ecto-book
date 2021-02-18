defmodule Books.Repo.Migrations.CreateAuthors do
  use Ecto.Migration

  def change do
    create table(:authors) do
      add :name, :string
      add :nacionalidad, :string

    end
  end
end

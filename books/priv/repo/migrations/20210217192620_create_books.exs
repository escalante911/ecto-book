defmodule Books.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
       add :name, :string
       add :author, references(:authors)
       add :year, :string
    end
  end
end

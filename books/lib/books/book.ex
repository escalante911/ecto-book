defmodule Books.Books do
  use Ecto.Schema

  schema "books" do
    field :name, :string
    field :author, :string
    field :year, :string
  end

  def changeset(books, params \\ %{}) do
    books
    |> Ecto.Changeset.cast(params, [:name, :author, :year])
    |> Ecto.Changeset.validate_required([:name, :author])
  end
end

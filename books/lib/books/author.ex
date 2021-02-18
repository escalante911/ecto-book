defmodule Author.Books do
  use Ecto.Schema

  schema "authors" do
    field :name, :string
    field :nacionalidad, :string
    has_many :books, Books.Books
  end

   def changeset(author, params \\ %{}) do
    author
    |> Ecto.Changeset.cast(params, [:name, :nacionalidad])
    |> Ecto.Changeset.validate_required([:name, :nacionalidad])
  end
end

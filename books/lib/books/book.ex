defmodule Books.Books do
  use Ecto.Schema

  schema "books" do
    field :name, :string
    belongs_to :author, Author.Books
    field :year, :string
  end

  def changeset(books, params \\ %{}) do
    books
    |> Ecto.Changeset.cast(params, [:name, :author, :year])
    |> Ecto.Changeset.validate_required([:name])
  end
end



# book = %Books.Books{name: "Libro1", author: author, year: "2021" }
# author = %Author.Books{name: "Luis", nacionalidad: "Colombia"}
# Books.Repo.insert(author)
# author = Books.Repo.get(Author.Books, 4)
# Books.Repo.insert(book)

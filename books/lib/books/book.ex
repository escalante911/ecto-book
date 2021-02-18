defmodule Books.Books do
  use Ecto.Schema

  schema "books" do
    field :name, :string
    has_many :author, Author.Books
    field :year, :string
  end

  def changeset(books, params \\ %{}) do
    books
    |> Ecto.Changeset.cast(params, [:name, :author, :year])
    |> Ecto.Changeset.validate_required([:name])
  end
end

defmodule Author.Books do
   use Ecto.Schema

   schema "authors" do
     field :name, :string
     field :nacionalidad, :string
     belongs_to :author, Books.Books
   end

   def changeset(author, params \\ %{}) do
    author
    |> Ecto.Changeset.cast(params, [:name, :nacionalidad])
    |> Ecto.Changeset.validate_required([:name, :nacionalidad])
  end
end

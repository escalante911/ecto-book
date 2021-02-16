import Config

config :books, Books.Repo,
  database: "books_repo",
  username: "postgres",
  password: "1234",
  hostname: "localhost"

config :books, ecto_repos: [Books.Repo]

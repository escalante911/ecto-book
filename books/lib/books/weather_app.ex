defmodule Books.App do
  import Ecto.Query
  alias Books.{weather, Repo}

  def keyword_query do
    query =
      from w in weather,
           where: w.prcp > 0 or is_nil(w.prcp),
           select: w

    Repo.all(query)
  end

  def pipe_query do
    weather
    |> where(city: "Kraków")
    |> order_by(:temp_lo)
    |> limit(10)
    |> Repo.all
  end
end

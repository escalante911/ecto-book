defmodule Books.Weather do
  use Ecto.Schema


  schema "weather" do
    field :city     # Defaults to type :string
    field :temp_lo, :integer
    field :temp_hi, :integer
    field :prcp,    :float, default: 0.0
  end

  def changeset(weather, params \\ %{}) do
    weather
    |> Ecto.Changeset.cast(params, [:city, :temp_lo, :temp_hi, :prcp])
    |> Ecto.Changeset.validate_required([:city, :temp_lo, :temp_hi, :prcp])
  end



end

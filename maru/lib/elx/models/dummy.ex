defmodule Dummy do
  use Ecto.Schema


  @derive {Poison.Encoder, only: [:id, :data, :updated_at, :inserted_at]}

  @required_params [:data]
  @optional_params []

  schema "dummies" do
    field :data, :map
    timestamps(inserted_at: :created_at)
  end
end
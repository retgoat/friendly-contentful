defmodule Elx.Api do
  require Logger
  use Maru.Router

  plug Plug.Parsers,
    pass: ["*/*"],
    json_decoder: Poison,
    parsers: [:urlencoded, :json, :multipart]

  version "api" do
    namespace "v1" do
      get :dummies do
        entities = Elx.Repo.all(Dummy)
        respond_with(conn, entities)
      end
    end
  end

  def respond_with(conn, body, status \\ 200) do
    conn
    |> put_status(status)
    |> json(wrap(body))
    |> halt
  end

  defp wrap(collection) do
    if is_list(collection) do
      %{items: collection,
        count: Enum.count(collection) }
    else
      collection
    end
  end


  rescue_from [MatchError, RuntimeError], with: :custom_error

  rescue_from :all, as: e do
    Logger.error "#{inspect(e)}"
    conn
    |> put_status(Plug.Exception.status(e))
    |> text("Server Error")
  end

  defp custom_error(conn, exception) do
    conn
    |> put_status(500)
    |> text(exception.message)
  end
end

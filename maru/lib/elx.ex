defmodule Elx do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false


    children = [
      worker(Elx.Repo, [])
    ]
    opts = [strategy: :one_for_one, name: Elx.Supervisor]
    Supervisor.start_link(children, opts)
  end
end

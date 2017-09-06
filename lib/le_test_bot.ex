defmodule LeTestBot do
  use Application
  require Logger

  def start(_, _) do
    import Supervisor.Spec

    children = [
      supervisor(Telex, []),
      supervisor(LeTestBot.Bot, [:updates, Application.get_env(:le_test_bot, :token)])
    ]

    opts = [strategy: :one_for_one, name: LeTestBot]
    case Supervisor.start_link(children, opts) do
      {:ok, _} = ok ->
        Logger.info "Starting LeTestBot"
        ok
      error ->
        Logger.error "Error starting LeTestBot"
        error
    end
  end
end

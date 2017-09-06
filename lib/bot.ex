defmodule LeTestBot.Bot do
  @bot :le_test_bot
  def bot(), do: @bot

  use Telex.Bot, name: @bot
  use Telex.Dsl

  def handle({:command, "start", msg}, name, _) do
    answer msg, "Well hello!", bot: name
  end
end

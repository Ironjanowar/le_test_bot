defmodule LeTestBotTest do
  use ExUnit.Case
  doctest LeTestBot

  test "greets the world" do
    assert LeTestBot.hello() == :world
  end
end

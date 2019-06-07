defmodule SweatBotTest do
  use ExUnit.Case
  doctest SweatBot

  test "greets the world" do
    assert SweatBot.hello() == :world
  end
end

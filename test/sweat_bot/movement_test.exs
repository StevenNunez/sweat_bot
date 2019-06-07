defmodule SweatBot.MovementTest do
  use ExUnit.Case
  alias SweatBot.Movement

  test "greets the world" do
    movement = %Movement{
      instructions:
        "Lay face down, hands on the floor. Push up, and return to the start position.",
      name: "Push-Up",
      iteration: "Rep",
      valid_range: 1..10
    }
found_movement = eventually_select(movement)
    assert found_movement == movement
  end

  defp eventually_select(expected) do
    Stream.repeatedly(&Movement.select_random/0)
    |> Enum.find(fn selected -> selected == expected end)
  end
end

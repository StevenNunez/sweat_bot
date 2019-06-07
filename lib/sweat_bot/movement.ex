defmodule SweatBot.Movement do
  @movements Application.get_env(:sweat_bot, :movements)
  defstruct instructions: "", name: "", iteration: "", valid_range: 1..10

  def select_random do
    all() |> Enum.random()
  end

  def all do
    for movement <- @movements do
      struct!(__MODULE__, movement)
    end
  end
end

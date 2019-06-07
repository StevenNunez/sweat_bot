use Mix.Config

config :sweat_bot,
  movements: [
    [
      instructions:
        "Lay face down, hands on the floor. Push up, and return to the start position.",
      name: "Push-Up",
      iteration: "Rep",
      valid_range: 1..10
    ],
    [
      instructions: "Lay face down, hands on the floor. Push up. Stay there",
      name: "Plank",
      iteration: "Seconds",
      valid_range: 10..30
    ]
  ]

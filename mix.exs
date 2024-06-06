defmodule FmTransmitter.Umbrella.MixProject do
  use Mix.Project

  def project do
    [
      apps_path: "apps",
      version: "0.1.0",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases(),
      releases: [
        fm_transmitter: [
          applications: [fm_transmitter: :permanent]
        ]
      ]
    ]
  end

  # Dependencies listed here are available only for this project and cannot be accessed from
  # applications inside the apps folder.
  #
  # Run "mix help deps" for examples and options.
  defp deps do
    []
  end

  # Aliases listed here are available only for this project and cannot be accessed from
  # applications inside the apps/ folder.
  defp aliases do
    [
      burn: ["cmd --app fm_transmitter mix burn"],
      firmware: ["cmd --app fm_transmitter mix firmware"]
    ]
  end
end

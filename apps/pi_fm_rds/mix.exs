defmodule PiFmRds.MixProject do
  use Mix.Project

  def project do
    [
      app: :pi_fm_rds,
      build_path: "../../_build",
      compilers: [:elixir_make | Mix.compilers()],
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      deps: deps(),
      elixir: "~> 1.16",
      lockfile: "../../mix.lock",
      make_clean: ["clean"],
      make_cwd: "PiFmRds/src",
      make_makefile: "../../Makefile",
      make_target: ["app"],
      version: "0.1.0"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:elixir_make, "~> 0.8.4"}
    ]
  end
end

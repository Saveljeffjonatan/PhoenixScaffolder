defmodule PhoenixScaffolder.MixProject do
  use Mix.Project

  def project do
    [
      app: :phoenix_scaffolder,
      version: "0.1.0",
      elixir: "~> 1.16",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: escript_config()
    ]
  end

  defp escript_config do
    [
      main_module: PhoenixScaffolder.CLI
    ]
  end

  defp deps do
    [
      {:phoenix, "~> 1.6"}
    ]
  end
end


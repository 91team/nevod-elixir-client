defmodule NevodElixirClient.MixProject do
  use Mix.Project

  def project do
    [
      app: :nevod_elixir_client,
      version: "0.1.0",
      elixir: "~> 1.17-dev",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {NevodElixirClient.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:grpc, "~> 0.7"},
      {:jason, "~> 1.4"},
      {:protobuf, "~> 0.11"}
    ]
  end
end

defmodule LeTestBot.Mixfile do
  use Mix.Project

  def project do
    [
      app: :le_test_bot,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {LeTestBot, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:telex, git: "https://github.com/rockneurotiko/telex.git", tag: "0.3.2-rc6"}
    ]
  end
end

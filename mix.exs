Code.ensure_loaded?(Hex) and Hex.start

defmodule Coverex.Mixfile do
  use Mix.Project

  def project do
    [app: :coverex,
     version: "0.0.5-dev",
     elixir: "~> 0.14",
     package: package,
     description: description,
     test_coverage: [tool: Coverex.Task],
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [ applications: []]
  end

  # List all dependencies in the format:
  #
  # {:foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:ex_doc, github: "elixir-lang/ex_doc", ref: "ca71b84b9" } # ex_doc for elixir 0.14.0
    ] 
  end

  # Hex Package description
  defp description do
    """
    Coverex is an Elixir Coverage tool used by mix. It provides tables with overviews of 
    module and function coverage data, includings links to annotated source code files. 
    """
  end

  # Hex Package definition
  defp package do
    [contributors: ["Klaus Alfert"],
     license: ["Apache 2.0"],
     links: [{"GitHub", "https://github.com/alfert/coverex"}]
    ]
  end

end

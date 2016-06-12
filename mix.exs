defmodule Samlex.Mixfile do
  use Mix.Project

  @version "0.0.1"

  def project do
    [
      app: :samlex,
      version: @version,
      elixir: "~> 1.2",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps,

      # Hex
      description: description,
      package: package,

      # Docs
      name: "Samlex",
      docs: [
        source_ref: "v#{@version}", main: "Samlex",
        canonical: "http://hexdocs.pm/samlex",
        source_url: "https://github.com/ReaxDev/samlex"
      ]
    ]
  end

  def application do
    [applications: [:logger],
     mod: {Samlex, []}]
  end

  defp deps do
    [
      {:timex, "~> 2.1.6"},
      {:ex_crypto, "~> 0.1.1", github: "ntrepid8/ex_crypto"},
      {:sweet_xml, "~> 0.6.1"},
      {:xml_builder, "~> 0.0.6"},

      # Docs
      {:ex_doc, "~> 0.10", only: :docs},
      {:earmark, "~> 0.1", only: :docs},
      {:inch_ex, ">= 0.0.0", only: :docs}
    ]
  end

  defp package do
    [
      maintainers: ["Sean Hill"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/ReaxDev/samlex"},
      files: ~w(lib CHANGELOG.md LICENSE mix.exs README.md)
    ]
  end

  defp description do
    """
    Samlex is a package for allowing Phoenix applications to be used as SAML2 Service Providers.
    """
  end
end

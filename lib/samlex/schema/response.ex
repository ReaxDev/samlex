defmodule Samlex.Schema.Request do
  alias Samlex.SamlTypes, as: T
  alias Samlex.Schema.Assertion

  @type t :: %__MODULE__{
    version: T.version,
    issue_instant: T.saml_datetime,
    destination: String.t,
    issuer: String.t,
    status: T.status_code,
    assertion: Assertion.t
  }

  defstruct version: "2.0",
            issue_instant: "",
            destination: "",
            issuer: "",
            status: :unknown,
            assertion: %Assertion{}
end

defmodule Samlex.Schema.AuthnRequest do
  alias Samlex.SamlTypes, as: T

  @type t :: %__MODULE__{
    version: T.version,
    issue_instant: T.saml_datetime,
    destination: String.t,
    issuer: String.t,
    consumer_location: String.t
  }

  defstruct version: "2.0",
            issue_instant: "",
            destination: "",
            issuer: "",
            consumer_location: ""
end

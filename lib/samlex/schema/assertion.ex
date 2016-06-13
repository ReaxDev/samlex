defmodule Samlex.Schema.Assertion do
  alias Samlex.SamlTypes, as: T
  alias Samlex.Schema.Subject

  @type t :: %__MODULE__{
    version: T.version,
    issue_instant: T.saml_datetime,
    recipient: String.t,
    issuer: String.t,
    subject: Subject.t,
    conditions: T.conditions,
    attributes: [Keyword.t]
  }

  defstruct version: "2.0",
            issue_instant: "",
            recipient: "",
            issuer: "",
            subject: %Subject{},
            conditions: [],
            attributes: []
end

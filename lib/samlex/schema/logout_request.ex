defmodule Samlex.Schema.LogoutRequest do
  alias Samlex.SamlTypes, as: T

  @type t :: %__MODULE__{
    version: T.version,
    issue_instant: T.saml_datetime,
    destination: String.t,
    issuer: String.t,
    name: String.t,
    reason: T.logout_reason
  }

  defstruct version: "2.0",
            issue_instant: "",
            destination: "",
            issuer: "",
            name: "",
            reason: :user
end

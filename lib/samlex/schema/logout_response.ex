defmodule Samlex.Schema.LogoutResponse do
  alias Samlex.SamlTypes, as: T

  @type t :: %__MODULE__{
    version: T.version,
    issue_instant: T.saml_datetime,
    destination: String.t,
    issuer: String.t,
    status: T.status_code
  }

  defstruct version: "2.0",
            issue_instant: "",
            destination: "",
            issuer: "",
            status: :unknown
end

defmodule Samlex.Schema.IDPMetadata do
  alias Samlex.Schema.Contact
  alias Samlex.Schema.Org
  alias Samlex.SamlTypes, as: T

  @type t :: %__MODULE__{
    org: Org.t,
    tech: Contact.t,
    signed_requests: boolean,
    certificate: binary,
    entity_id: String.t,
    login_location: String.t,
    logout_location: String.t | nil,
    name_format: T.name_format
  }

  defstruct org: %Org{},
            tech: %Contact{},
            signed_requests: true,
            certificate: nil,
            entity_id: "",
            login_location: "",
            logout_location: "",
            name_format: :unknown
end

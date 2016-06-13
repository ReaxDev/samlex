defmodule Samlex.Schema.SPMetadata do
  alias Samlex.Schema.Org
  alias Samlex.Schema.Contact

  @type t :: %__MODULE__{
    org: Org.t,
    tech: Contact.t,
    signed_requests: boolean,
    signed_assertions: boolean,
    certificate: binary | nil,
    cert_chain: [binary],
    entity_id: String.t,
    consumer_location: String.t,
    logout_location: String.t | nil
  }

  defstruct org: %Org{},
            tech: %Contact{},
            signed_requests: true,
            signed_assertions: true,
            certificate: nil,
            cert_chain: [],
            entity_id: "",
            consumer_location: "",
            logout_location: nil
end

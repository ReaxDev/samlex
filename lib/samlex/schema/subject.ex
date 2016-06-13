defmodule Samlex.Schema.Subject do
  alias Samlex.SamlTypes, as: T

  @type t :: %__MODULE__{
    name: String.t,
    confirmation_method: T.bearer,
    notonorafter: T.saml_datetime
  }

  defstruct name: "",
            confirmation_method: :bearer,
            notonorafter: ""
end

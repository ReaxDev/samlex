defmodule Samlex.Schema.Org do
  @type t :: %__MODULE__{
    name: LocalizedString.t,
    displayname: LocalizedString.t,
    url: LocalizedString.t
  }

  defstruct name: "",
            displayname: "",
            url: ""
end

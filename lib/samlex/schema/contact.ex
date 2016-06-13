defmodule Samlex.Schema.Contact do
  @type t :: %__MODULE__{
    name: String.t,
    email: String.t
  }

  defstruct name: "",
            email: ""
end

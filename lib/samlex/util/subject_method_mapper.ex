defmodule Samlex.Util.SubjectMethodMapper do
  alias Samlex.SamlTypes, as: T

  @spec map_subject_method(T.urn) :: T.subject_method
  def map_subject_method(urn) when is_binary(urn) do
    case urn do
      "urn:oasis:names:tc:SAML:2.0:cm:bearer" -> :bearer
      _ -> :unknown
    end
  end
end

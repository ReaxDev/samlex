defmodule Samlex.Util.LogoutReasonMapper do
  alias Samlex.SamlTypes, as: T

  @spec map_logout_reason(T.urn) :: T.logout_reason
  def map_logout_reason(urn) when is_binary(urn) do
    case urn do
      "urn:oasis:names:tc:SAML:2.0:logout:user" -> :user
      "urn:oasis:names:tc:SAML:2.0:logout:admin" -> :admin
      _ -> :unknown
    end
  end

  @spec map_urn(T.logout_reason) :: T.urn
  def map_urn(logout_reason) when is_atom(logout_reason) do
    case logout_reason do
      :user -> "urn:oasis:names:tc:SAML:2.0:logout:user"
      :admin -> "urn:oasis:names:tc:SAML:2.0:logout:admin"
    end
  end
end

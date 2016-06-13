defmodule Samlex.Util.StatusCodeMapper do
  alias Samlex.SamlTypes, as: T

  @spec map_status_code(T.urn) :: T.status_code
  def map_status_code(urn = "urn:" <> _) do
    urn
    |> String.split(":")
    |> List.last
    |> String.to_atom
  end

  def map_status_code(urn) when is_binary(urn) do
    case urn do
      "urn:oasis:names:tc:SAML:2.0:status:Success" -> :success
      "urn:oasis:names:tc:SAML:2.0:status:VersionMismatch" -> :bad_version
      "urn:oasis:names:tc:SAML:2.0:status:AuthnFailed" -> :authn_failed
      "urn:oasis:names:tc:SAML:2.0:status:InvalidAttrNameOrValue" -> :bad_attr
      "urn:oasis:names:tc:SAML:2.0:status:RequestDenied" -> :denied
      "urn:oasis:names:tc:SAML:2.0:status:UnsupportedBinding" -> :bad_binding
      _ -> :unknown
    end
  end

  @spec map_urn(T.status_code) :: T.urn
  def map_urn(status_code) when is_atom(status_code) do
    case status_code do
      :success -> "urn:oasis:names:tc:SAML:2.0:status:Success"
      :bad_version -> "urn:oasis:names:tc:SAML:2.0:status:VersionMismatch"
      :authn_failed -> "urn:oasis:names:tc:SAML:2.0:status:AuthnFailed"
      :bad_attr -> "urn:oasis:names:tc:SAML:2.0:status:InvalidAttrNameOrValue"
      :denied -> "urn:oasis:names:tc:SAML:2.0:status:RequestDenied"
      :bad_binding -> "urn:oasis:names:tc:SAML:2.0:status:UnsupportedBinding"
      _ -> raise :bad_status_code
    end
  end
end

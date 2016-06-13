defmodule Samlex.Util.CommonAttributeMapper do
  alias Samlex.SamlTypes, as: T

  @spec map_attribute(T.urn) :: T.common_attribute
  def map_attribute(urn = "http://" <> _) do
    urn
    |> String.split("/")
    |> List.last
    |> String.to_atom
  end

  def map_attribute(urn) when is_binary(urn) do
    case urn do
      "urn:oid:2.16.840.1.113730.3.1.3" -> :employeeNumber
      "urn:oid:1.3.6.1.4.1.5923.1.1.1.6" -> :eduPersonPrincipalName
      "urn:oid:0.9.2342.19200300.100.1.3" -> :mail
      "urn:oid:2.5.4.42" -> :givenName
      "urn:oid:2.16.840.1.113730.3.1.241" -> :displayName
      "urn:oid:2.5.4.3" -> :commonName
      "urn:oid:2.5.4.20" -> :telephoneNumber
      "urn:oid:2.5.4.10" -> :organizationName
      "urn:oid:2.5.4.11" -> :organizationalUnitName
      "urn:oid:1.3.6.1.4.1.5923.1.1.1.9" -> :eduPersonScopedAffiliation
      "urn:oid:2.16.840.1.113730.3.1.4" -> :employeeType
      "urn:oid:0.9.2342.19200300.100.1.1" -> :uid
      "urn:oid:2.5.4.4" -> :surName
      _ -> String.to_atom(urn)
    end
  end
end

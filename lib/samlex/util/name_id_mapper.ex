defmodule Samlex.Util.NameIDMapper do
  alias Samlex.SamlTypes, as: T

  @spec map_nameid(T.urn) :: T.name_format
  def map_nameid(urn) when is_binary(urn) do
    case urn do
      "urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress" -> :email
      "urn:oasis:names:tc:SAML:1.1:nameid-format:X509SubjectName" -> :x509
      "urn:oasis:names:tc:SAML:1.1:nameid-format:WindowsDomainQualifiedName" -> :windows
      "urn:oasis:names:tc:SAML:2.0:nameid-format:kerberos" -> :krb
      "urn:oasis:names:tc:SAML:2.0:nameid-format:persistent" -> :persistent
      "urn:oasis:names:tc:SAML:2.0:nameid-format:transient" -> :transient
      _ -> :unknown
    end
  end
end

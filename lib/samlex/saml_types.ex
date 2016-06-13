defmodule Samlex.SamlTypes do
  @type common_attribute :: :employeeNumber
                          | :eduPersonPrincipalName
                          | :mail
                          | :givenName
                          | :displayName
                          | :commonName
                          | :telephoneNumber
                          | :organizationName
                          | :organizationalUnitName
                          | :eduPersonScopedAffiliation
                          | :employeeType
                          | :uid
                          | :surName
                          | atom

  @type condition :: [not_before: saml_datetime] | [not_on_or_after: saml_datetime] | [audience: String.t]

  @type conditions :: [condition]

  @type localized_string :: String.t | [locale: atom, loalized_string: String.t]

  @type logout_reason :: :user | :admin

  @type name_format :: :email
                     | :x509
                     | :windows
                     | :krb
                     | :persistent
                     | :transient
                     | :unknown

  @type version :: String.t

  @type saml_datetime :: String.t

  @type sp_sign_method :: String.t

  @type status_code :: :success
                     | :request_error
                     | :response_error
                     | :bad_version
                     | :authn_failed
                     | :bad_attr
                     | :denied
                     | :bad_binding
                     | :unknown
                     | atom

  @type subject_method :: :bearer | :unknown

  @type urn :: String.t
end

resource "azurerm_key_vault_secret" "databricks_token" {
  name            = var.databricks-token
  value           = databricks_token.pat.token_value
  key_vault_id    = module.kv_default.id
  content_type    = "token"
  expiration_date = local.secret_expiration_date
}

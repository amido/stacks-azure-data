resource "azurerm_data_factory_custom_dataset" "ds_ex_AzureSql_ExampleSource" {
  name            = var.dataset_name
  data_factory_id = data.azurerm_data_factory.factory.id
  type            = var.dataset_type
  folder          = "External_Sources"
  linked_service {
    name = var.linked_service_name
  }
  type_properties_json = jsonencode({})
  schema_json          = jsonencode({})
}

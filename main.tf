resource "azurerm_resource_group" "purview_test_01" {
  name     = "purview_test_01"
  location = "East US"
}

resource "azapi_resource" "symbolicname1" {
  type = "Microsoft.Purview/accounts@2021-07-01"
  name = "harishperview01"
  location = "East US"
  parent_id = azurerm_resource_group.purview_test_01.id
  
  identity {
    type = "SystemAssigned"
    #identity_ids = ["SystemAssigned"]
  }
  body = jsonencode({
    properties = {
      cloudConnectors = {}
      managedResourceGroupName = "purview_test_010"
      publicNetworkAccess = "Enabled"
    }
  })
}
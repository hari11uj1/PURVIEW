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

resource "azurerm_resource_group" "purview_test_023" {
  name     = "purview_test_023"
  location = "East US"
}


resource "azapi_resource" "symbolicname2" {
  type = "Microsoft.Purview/accounts@2021-07-01"
  name = "harishperview02"
  location = "East US"
  parent_id = azurerm_resource_group.purview_test_023.id
  
  identity {
    type = "SystemAssigned"
    #identity_ids = ["SystemAssigned"]
  }
  body = jsonencode({
    properties = {
      cloudConnectors = {}
      managedResourceGroupName = "purview_test_0111"
      publicNetworkAccess = "Enabled"
    }
  })
}

resource "azapi_resource" "symbolicname3" {
  type = "Microsoft.Purview/accounts@2021-07-01"
  name = "harishperview03"
  location = "Canada Central"
  parent_id = azurerm_resource_group.purview_test_023.id
  
  identity {
    type = "SystemAssigned"
    #identity_ids = ["SystemAssigned"]
  }
  body = jsonencode({
    properties = {
      cloudConnectors = {}
      managedResourceGroupName = "purview_test_1111"
      publicNetworkAccess = "Enabled"
    }
  })
}
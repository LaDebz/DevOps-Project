#-------------------------------------------------
# Confirmation on resource deployment 
#-------------------------------------------------
DeployAzResourceGroup      = "No"
DeployAzVirtualNetwork     = "No"
DeployAzSubnet             = "No"
DeployAzDataFactory        = "No"

#-------------------------------------------------
# Values for generic variables 
#-------------------------------------------------
environment = "test"
region      = "canada central"
catlog      = "azurepoc"
extra_tags = {
  "ProjectOwner" : "LaDebz",
  "Created-by" : "DevConsults"
  
}

#-------------------------------------------------
# Values for resource group variables 
#-------------------------------------------------
rg_dict = [  {
    resource_group_name = "rg-azurepoc-test"
    region              = "Canada Central"
    tags = {
            "ProjectOwner" : "LaDebz ",
            "Created-at" : "2024-07-22T00:00:00Z",
            "Created-by" : "DevConsults"
            
 }
  },
  {
    resource_group_name = "rg-azurepoc-prod"
    region              = "Canada Central"
    tags = {
            "ProjectOwner" : "LaDebz",
            "Created-at" : "2024-07-22T00:00:00Z",
            "Created-by" : "DevConsults"
            
 }
  },
  {
    resource_group_name = "rg-azurepoc-demo"
    region              = "Canada Central"
    tags = {
            "ProjectOwner" : "LaDebz",
            "Created-at" : "2024-07-22T00:00:00Z",
            "Created-by" : "DevConsults"
            
 }
  }
]

#--------------------------------------
# Values for Virtual Network variables 
#--------------------------------------
vnet_dict = [
  {
    vnet_name           = "vnet-azurepoc-test"
    resource_group_name = "rg-azurepoc-test"
    cidr_block          = ["10.0.0.0/16"]

  }
]
#--------------------------------------
# Values for Subnet variables 
#--------------------------------------

snet_dict = [
  {
    snet_name                                      = "snet-azurepoc-test"
    resource_group_name                            = "rg-azurepoc-test"
    address_prefixes                               = ["10.0.0.0/24"]
    vnet_name                                      = "vnet-azurepoc-test"
    service_endpoints                              = ["Microsoft.Storage", "Microsoft.KeyVault"]
    enforce_private_link_endpoint_network_policies = false

  }
]

#--------------------------------------
# Values for Data Factory variables 
#--------------------------------------

adf_dict = [
  {
    managed_virtual_network_enabled = true
    public_network_enabled          = false
    identity_type                   = "SystemAssigned"
    resource_group_name             = "rg-azurepoc-test"
    adf_name                        = "adf-azurepoc-test"
    identity_ids                    = ""
    region      = "West Europe"
    tags = {
            "ProjectOwner" : "LaDebz",
            "Created-at"   : "2024-07-22T00:00:00Z",
            "Created-by"   : "DevConsults"
            
}
    global_parameters_required    = false
    github_configuration_required = false
  }
]

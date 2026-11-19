
terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "5.9.0"
        }
    }
    # backend "azurerm" {
    #     resource_group_name = "rg1"
    #     storage_account_name = "stg1"
    #     container_name = "blob-contaimer1"
    #     key = "terraform.tfstate"
    # }
}

provider "azurerm" {
    features {}
    subscription_id = "133f3136-fb23-4aaa-a8d2-f419512724b3"
}

resource "azurerm_resource_group" "rgs" {
    name = "dv-rg-routing"
    location = "West US"
}

# resource "azurerm_storage_account" "stgs" {
#     name = "stg1"
#     resource_group_name = "rg1"
#     location = "West US"
#     account_tier = "Standard"
#     account_replication_type = "LRS"
# }

# resource "azurerm_virtual_network" "vnets" {
#     name = "vnet1"
#     resource_group_name = "rg1"
#     location = "West US"
#     address_space = ["10.0.0.0/16"]
# }
# resource "azurerm_subnet" "subnets" {
#     name = "subnet1"
#     resource_group_name = "rg1"
#     virtual_network_name = "vnet1"
#     address_prefixes = ["10.0.0.1/28"]
# }
# resource "azurerm_network_interface" "nica" {
#     name = "nic1"
#     resource_group_name = "rg1"
#     location = "West US"
#     ip_configuration {
#         name = "in-config1"
#         subnet_id = azurerm_subnet.subnets.id
#         private_ip_address_allocation = "Dynamic"
#     }
# }
# resource "azurerm_linux_virtual_machine" "vms1" {
#     name = "vm1"
#     resource_group_name = "rg1"
#     location = "West US"
#     size = "Standard_F2"
#     admin_username = "Adminuser"
#     admin_password = "Admin@123456"
#     network_interface_ids = [azurerm_network_interface.nica.id]
#     disable_password_authentication = "false"

#     os_disk {
#         caching = "ReadWrite"
#         storage_account_type = "Standard_LRS"
#     }

#     source_image_reference {
#         publisher = "Canonical"
#         offer = "UbuntuServer"
#         sku = "18.04-LTS"
#         version = "latest"
#     }
# }

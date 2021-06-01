# Create a Variables
variable "rgname" {
    type        = string
    description = "resource grouop name"
    default     = "RG-Terraform"
}
variable "location" {
    type        = string
    description = "location name"
    default     = "eastus2"
}

variable "virtual_network_name" {
    type = string 
    description = "Virtual Network Name"
    default = "Vnet-Terraform"
}

variable "subnet" {
    type = string 
    description = "Subnet"
    default     = "Internal"
}

variable "network_interface"{
    type = string 
    description = "Network Interface"
    default     = "Vnet-Terraform"
}

variable "public_ip" {
    type = list(string)
    description = "Ip publico"
    default = ["pip-VM01","pip-VM02","pip-VM03"]
}

variable "vm_name" {
    type = list(string)
    description = "VMs Name"
    default = ["VM01","VM02","VM03"]
}

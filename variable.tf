variable "resource_group_name" {
  description = "Name of the Resource group"
  default     = "myResourceGroup"
}

variable "location" {
  description = "Location"
  default     = "West Europe"
}

variable "vnet_name" {
  description = "Name of the virtual network"
  default     = "myVNet"
}

variable "subnet_names" {
  description = "Name of the subnets"
  type        = list(string)
  default     = ["frontend-subnet", "backend-subnet", "db-subnet"]
}

variable "subnet_prefixes" {
  description = "Prefixes for the subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "nsg_names" {
  description = "Names of the Network Security Groups"
  type        = list(string)
  default     = ["nsg-frontend", "nsg-backend", "nsg-db"]
}

variable "allowed_ip" {
  description = "IP address allowed to access the frontend"
  default     = "<Your IP Address>"
}

variable "nic_names" {
  description = "Names of the Network Interfaces"
  type        = list(string)
  default     = ["frontend-nic", "backend-nic", "db-nic"]
}

variable "vm_names" {
  description = "Names of the Virtual Machines"
  type        = list(string)
  default     = ["frontend-vm", "backend-vm", "db-vm"]
}

variable "admin_username" {
  description = "Admin username for the VMs"
  default     = "azureuser"
}

variable "vm_size" {
  description = "Size of the Virtual Machines"
  default     = "Standard_B1s"
}

variable "vm_password_secret_name" {
  description = "Name of the secret in Key Vault storing the VM admin password"
  default     = "P@ssw0rd1234"
}
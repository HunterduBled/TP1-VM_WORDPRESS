variable "wordpress_vm" {
    type        = string
    description = "Nom de la VM Wordpress"
    default     = "wordpress-vm"
}

variable "type" {
    type        = string
    description = "Type de la VM"
    default     = "e2-small"
}

variable "zone" {
    type        = string
    description = "Zone de la VM"
    default     = "europe-west9-a"
}

variable "network_self_link" {
    type        = string
    description = "Lien vers le réseau"
}

variable "subnet_self_link" {
    type        = string
    description = "Lien vers le sous-réseau"
}

variable "service_account_email" {
    description = "Email du compte de service"
}
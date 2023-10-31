variable "firewall_source" {
    description = "IP source pour le firewall"
    default     = ["0.0.0.0/0"]
}

variable "network_self_link" {
    type        = string
    description = "Lien vers le réseau"
}

variable "subnet_self_link" {
    type        = string
    description = "Lien vers le sous-réseau"
}
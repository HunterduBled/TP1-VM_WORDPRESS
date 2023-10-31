variable "vpc_network" {
    type        = string
    description = "Nom du réseau VPC"
    default     = "my-vpc-network"
}

variable "vpc_subnet" {
    type        = string
    description = "Nom du sous-réseau VPC"
    default     = "my-vpc-subnet"
}

variable "subnet_cidr" {
    type        = string
    description = "CIDR de la sous-réseau"
    default     = "10.0.0.0/24"
}

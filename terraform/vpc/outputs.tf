output "network_name" {
    description = "Nom du réseau VPC créé."
    value       = google_compute_network.my_vpc_network.name
}

output "network_self_link" {
    description = "Lien vers le réseau VPC créé."
    value       = google_compute_network.my_vpc_network.self_link
}

output "subnet_name" {
    description = "Nom du sous-réseau VPC créé."
    value       = google_compute_subnetwork.my_vpc_subnet.name
}

output "subnet_self_link" {
    description = "Lien vers le réseau VPC créé."
    value       = google_compute_subnetwork.my_vpc_subnet.self_link
}

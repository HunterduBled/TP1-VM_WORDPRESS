output "db_vm_name" {
    description = "Nom de la machine virtuelle de base de données créée."
    value       = google_compute_instance.db_vm.name
}

output "db_vm_self_link" {
    description = "Lien vers la machine virtuelle de base de données créée."
    value       = google_compute_instance.db_vm.self_link
}

output "db_vm_public_ip" {
    description = "Adresse IP privée de la machine virtuelle de base de données."
    value       = google_compute_instance.db_vm.network_interface[0].access_config[0].nat_ip
}

output "db_vm_internal_ip" {
    description = "Adresse IP interne de la machine virtuelle de base de données."
    value       = google_compute_instance.db_vm.network_interface[0].network_ip
}
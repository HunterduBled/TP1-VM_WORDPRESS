output "wordpress_vm_name" {
    description = "Nom de la machine virtuelle WordPress créée."
    value       = google_compute_instance.wordpress_vm.name
}

output "wordpress_vm_self_link" {
    description = "Lien vers la machine virtuelle WordPress créée."
    value       = google_compute_instance.wordpress_vm.self_link
}

output "wordpress_vm_public_ip" {
    description = "Adresse IP publique de la machine virtuelle WordPress."
    value       = google_compute_instance.wordpress_vm.network_interface[0].access_config[0].nat_ip
}

output "wordpress_vm_internal_ip" {
    description = "Adresse IP interne de la machine virtuelle WordPress."
    value       = google_compute_instance.wordpress_vm.network_interface[0].network_ip
}

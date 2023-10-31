output "vpc_firewall_allow_ssh" {
    description = "Règle de pare-feu permettant SSH."
    value       = google_compute_firewall.allow-ssh.self_link
}

output "vpc_firewall_allow_http_https" {
    description = "Règle de pare-feu permettant HTTP et HTTPS."
    value       = google_compute_firewall.allow-http-https.self_link
}

output "vpc_firewall_allow_tcp_icmp_udp" {
    description = "Règle de pare-feu permettant le trafic TCP, ICMP (ping) et UDP."
    value       = google_compute_firewall.allow-tcp-icmp-udp.self_link
}

output "vpc_firewall_db_vm" {
    description = "Règle de pare-feu permettant le trafic TCP vers la VM de base de données."
    value       = google_compute_firewall.db_vm.self_link
}

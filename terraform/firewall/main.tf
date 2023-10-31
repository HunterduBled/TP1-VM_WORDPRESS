resource "google_compute_firewall" "allow-ssh" {
    name    = "allow-ssh"
    network = var.network_self_link
    allow {
        protocol = "tcp"
        ports    = ["22"]
    }
    source_ranges = var.firewall_source
}

resource "google_compute_firewall" "allow-http-https" {
    name    = "allow-http"
    network = var.network_self_link
    allow {
        protocol = "tcp"
        ports    = ["80","443"]
    }
    source_ranges = var.firewall_source
    target_tags = [ "wordpress-vm" ]
}

resource "google_compute_firewall" "allow-tcp-icmp-udp" {
    name    = "allow-internal"
    network = var.network_self_link
    allow {
        protocol = "tcp"
    }
    allow {
        protocol = "icmp"
    }
    allow {
        protocol = "udp"
    }
    source_ranges = var.firewall_source
}

resource "google_compute_firewall" "db_vm" {
    name    = "allow-database"
    network = var.network_self_link

    allow {
        protocol = "tcp"
        ports    = ["3306"]
    }
    source_ranges = ["10.0.0.0/24"]
    target_tags = [ "db-vm","wordpress-vm"]
}

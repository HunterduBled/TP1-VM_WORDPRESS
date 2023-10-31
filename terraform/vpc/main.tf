resource "google_compute_network" "my_vpc_network" {
    name                    = var.vpc_network
    auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "my_vpc_subnet" {
    name          = var.vpc_subnet
    network       = google_compute_network.my_vpc_network.self_link
    ip_cidr_range = var.subnet_cidr
}

resource "google_compute_instance" "db_vm" {
    name         = var.db_vm
    machine_type = var.type
    zone         = var.zone
    tags         = ["db-vm"]

    service_account {
        email  = var.service_account_email
        scopes = ["cloud-platform"]
    }

    boot_disk {
        initialize_params {
            image = "ubuntu-os-cloud/ubuntu-2004-lts"
        }
    }

    network_interface {
        network     = var.network_self_link
        subnetwork  = var.subnet_self_link
    access_config {
        }
    }
}
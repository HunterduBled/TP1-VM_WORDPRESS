resource "google_service_account" "instance_service_account" {
    account_id   = var.account_id
    display_name = var.display_name
}

resource "google_service_account_key" "service_account" {
    service_account_id = google_service_account.instance_service_account.name
    public_key_type    = "TYPE_X509_PEM_FILE"
}

resource "local_file" "service_account_key" {
    content  = base64decode(google_service_account_key.service_account.private_key)
    filename = var.key_filename
}

resource "google_project_iam_binding" "instance_service_account_binding" {
    project = var.project_id
    role    = "roles/viewer"
    
    members = [
        "serviceAccount:${google_service_account.instance_service_account.email}"
    ]
}
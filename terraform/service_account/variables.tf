variable "project_id" {
    type        = string
    description = "ID du projet GCP"
}

variable "region" {
    type        = string
    description = "Région GCP"
}

variable "zone" {
    type        = string
    description = "Zone GCP"
}

variable "account_id" {
    description = "ID du compte de service."
}

variable "display_name" {
    description = "Nom du compte de service."
}

variable "key_filename" {
    description = "Comment déployer la clé et comment la nommer."
}
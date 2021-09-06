resource "google_storage_bucket" "datafusion-bucket-final-project" {
  name          = var.name
  location      = var.location
  force_destroy = true
  project = var.project_id
  count = 0
}

resource "google_storage_bucket" "backend-bucket-final-project" {
  name          = var.name
  location      = var.location
  force_destroy = true
  project = var.project_id
  count = 1
}

resource "google_storage_bucket" "cloud-function-final-project" {
  name          = var.name
  location      = var.location
  force_destroy = true
  project = var.project_id
  count = 2
}
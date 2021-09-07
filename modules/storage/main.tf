resource "google_storage_bucket" "bucket" {
  name          = var.name[count.index]
  location      = var.region
  force_destroy = true
  project = var.project_id
  count = 3
}
resource "google_storage_bucket" "bucket" {
  name          = var.name[count.index]
  location      = "US"
  force_destroy = true
  project = var.project
  count = 3
}
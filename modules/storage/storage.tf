resource "google_storage_bucket" "bucket" {
  name          = var.name[count.index]
  location      = var.region
  storage_class = MULTI_REGIONAL[count.index]
  force_destroy = true
  project = var.project
  count = 3
}
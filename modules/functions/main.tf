terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentials_file)

  project = var.project
  region  = var.region
  zone    = var.zone
}

resource "google_storage_bucket" "###" {
  name          = "###"
  force_destroy = true
}

resource "google_storage_bucket_object" "###" {
  name   = "###.zip"
  bucket = "###"
  source = var.source_object
}

resource "google_cloudfunctions_function" "###" {
  name        = "###"
  description = "###"
  runtime     = "python37"

  available_memory_mb   = 256
  source_archive_bucket = "###"
  source_archive_object = "###.zip"
  trigger_http          = true
  entry_point           = "###"
}

# IAM entry for all users to invoke the function
resource "google_cloudfunctions_function_iam_member" "invoker" {
  project        = var.project
  region         = var.region
  cloud_function = "###"

  role   = "roles/cloudfunctions.invoker"
  member = "allUsers"
}
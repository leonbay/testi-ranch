terraform {
<<<<<<< HEAD
=======
  backend "gcs" {
    bucket  = var.backend_bucket
    prefix  = "terraform/state"
    depends_on = [google_storage_bucket.bucket[1],]
  }

>>>>>>> e2a74dc5025606ef586e0a5b06da14a6a987b0af
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 3.5.0"
    }
  }
}

provider "google" {
  project= var.project
  region = var.region
  zone = var.zone
}

module "storage" {
  source     = ".//modules/storage"
  project_id = var.project_id
  region = var.region
}

module "database" {
  source = ".//modules/database"
  project_id = var.project_id
  region = var.region
}

module "functions" {
  source = ".//modules/functions"
  project_id = var.project_id
  region = var.region
}

module "data_fusion" {
  source = ".//modules/data_fusion"
  project_id = var.project_id
  region = var.region
}

module "cloud_build" {
  source = ".//modules/cloud_build"
  project_id = var.project_id
  region = var.region
}

module "cloud_scheduler" {
    source = ".//modules/cloud_build"
    project_id = var.project_id
}
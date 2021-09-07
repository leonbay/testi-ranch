terraform {
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

# module "cloud_scheduler" {
#     source = ".//modules/cloud_build"
#     project_id = var.project_id
# }
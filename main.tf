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

provider "google-beta" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

module "storage" {
  source     = ".//modules/storage"
  project = var.project
  region = var.region
}

# module "dialogflow" {
#   source     = ".//modules/dialogflow_agent"
#   project = var.project
#   region = var.region
# }

module "database" {
  source = ".//modules/database"
  project_id = var.project
  region = var.region
  depends_on = [module.functions,]
}

module "functions" {
  source = ".//modules/functions"
  project_id = var.project_id
  region = var.region
  depends_on = [module.storage,]
}

# module "cloud_scheduler" {
#     source = ".//modules/cloud_build"
#     project_id = var.project_id
# }
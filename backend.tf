terraform {
  backend "gcs" {
    bucket = "backend-bucket-final-project"
    depends_on = [module.storage,]
  }
}
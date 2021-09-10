terraform {
  backend "gcs" {
    bucket = module.storage.bucket[0]
  }
}
resource "google_cloudfunctions_function" "function" {
  project = var.project
  region = var.region
  zone = var.region
  name        = var.function_name[count.index]
  runtime     = var.runtime
  available_memory_mb   = 256
  count = 4
  trigger_http          = true
  entry_point           = var.entrypoint[count.index]

  source_repository {
    url = var.source_repository_url[count.index]
  }
}

# IAM entry for all users to invoke the function
resource "google_cloudfunctions_function_iam_member" "invoker" {
  count = 4
  project        = var.project
  region         = var.region
  cloud_function = google_cloudfunctions_function.function[count.index].name
  role   = "roles/cloudfunctions.invoker"
  member = "allUsers"
}
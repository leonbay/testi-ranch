resource "google_cloudfunctions_function" "function" {
  project = var.project
  region = var.region
  name        = var.function_name[count.index]
  runtime     = var.runtime
  available_memory_mb   = 256
  count = 8
  trigger_http          = true
  entry_point           = var.entrypoint[count.index]
  service_account_email = var.service_account

  source_repository {
    url = var.source_repository_url[count.index]
  }
}

resource "google_cloudfunctions_function" "function2" {
  project = var.project
  region = var.region
  name        = "dialogfunction"
  runtime     = "python39"
  available_memory_mb   = 256
  trigger_http          = true
  entry_point           = "dialogfunction"
  service_account_email = var.service_account

  source_repository {
    url = "https://source.developers.google.com/projects/leo-test-env-1/repos/github_leonbay_testi-ranch/moveable-aliases/master/paths/functions/dialogfunction"
  }
}

# IAM entry for all users to invoke the function
resource "google_cloudfunctions_function_iam_member" "invoker" {
  count = 8
  project        = google_cloudfunctions_function.function[count.index].project
  region         = google_cloudfunctions_function.function[count.index].region
  cloud_function = google_cloudfunctions_function.function[count.index].name
  role   = "roles/cloudfunctions.invoker"
  member = "allUsers"
}

resource "google_cloudfunctions_function_iam_member" "invoker2" {
  project        = "leo-test-env-1"
  region         = "us-central1"
  cloud_function = "dialogfunction"
  role   = "roles/cloudfunctions.invoker"
  member = "allUsers"
}
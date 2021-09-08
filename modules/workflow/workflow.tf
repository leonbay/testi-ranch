/* resource "google_service_account" "terra" {
  account_id   = "my-account"
  display_name = "Terra-acco"
}

resource "google_workflows_workflow" "pipeline-workflow" {
  provider = google-beta
  name            = "pipeline-workflow"
  region          = var.region
  description     = "Magic"
  service_account = google_service_account.terra.id
  source_contents = <<-EOF
  - pipeline_function:
      call: http.get
      args:
        url: https://us-central1-leo820.cloudfunctions.net/datapipeline #tämä on esim funktion-urli joka ajetaan workflowlla
      result: OK
EOF
} */
resource "google_workflows_workflow" "pipeline-workflow" {
  provider = google-beta
  name            = "pipeline-workflow"
  region          = var.region
  description     = "Magic"
  service_account = google_service_account.terra.id
  source_contents = <<-EOF
  main:
    params: [input]
    steps:

    - getTodaysCurrencies: #eka funktio, hakee päivittäisen datan
        try:
          call: http.get
          args:
            url: https://us-central1-loppuprojekti-325208.cloudfunctions.net/todays-currencies
          result: ok
                #condition: pyyttonin palauttamista vaihtoehdoista
        retry: ${http.default_retry}
        #except: #pubsubiin täältä
          
    - dataAddedToHistory: #toka funktio, muokkaa päivittäisen csv:ksi ja yhdistää historiadatan kanssa
        try:
          call: http.get
          args:
            url: https://us-central1-loppuprojekti-325208.cloudfunctions.net/daily-to-history
          result: ok
        retry: ${http.default_retry}
    - transferToBQ: #transfers data from bucket to bigquery table
        try:
          call: http.get
          args:
            url: https://us-central1-loppuprojekti-325208.cloudfunctions.net/bq-transfer
          result: ok
        retry: ${http.default_retry}

    - deleteDailyData: #kolmas funktio, poistaa päivittäisen json-tiedoston
        try:
          call: http.get
          args:
            url: https://us-central1-loppuprojekti-325208.cloudfunctions.net/delete-func
          result: ok
        retry: ${http.default_retry}
EOF
}
variable "runtime" {
  type = string
  default = "python37"
}

variable "entrypoint" {
  type = list(string)
<<<<<<< HEAD
  default = ["upload_to_bq","currency_history", "delete_blob", "currency_today", "currenttohistory", "upload_blob_history", "upload_blob_latest"]
}

variable "entry_point2" {
  type = list(string)
  default = ["dataprep_job_gcs_trigger", "dataprep_job_gcs_trigger"]
=======
  default = ["upload_to_bq","currency_history", "delete_blob", "currency_today", "currenttohistory", "history", "dataprep_job_gcs_trigger", "dataprep_job_gcs_trigger", "dialogfunction"]
>>>>>>> 4a4ed6fd0563f000af7bfcf027442f618d4f3a38
}

variable "source_repository_url" {
  type = list(string)
<<<<<<< HEAD
  default = ["https://source.developers.google.com/projects/loppuprojekti-325208/repos/github_dualic_awa-gcp-final-project/moveable-aliases/master/paths/functions/bq-data-transfer",
             "https://source.developers.google.com/projects/loppuprojekti-325208/repos/github_dualic_awa-gcp-final-project/moveable-aliases/master/paths/functions/currencyhistory",
             "https://source.developers.google.com/projects/loppuprojekti-325208/repos/github_dualic_awa-gcp-final-project/moveable-aliases/master/paths/functions/delete-func",
             "https://source.developers.google.com/projects/loppuprojekti-325208/repos/github_dualic_awa-gcp-final-project/moveable-aliases/master/paths/functions/todayscurrencies",
             "https://source.developers.google.com/projects/loppuprojekti-325208/repos/github_dualic_awa-gcp-final-project/moveable-aliases/master/paths/functions/daily-to-history"]
}

variable "source_repository_url2" {
  type = list(string)
  default = ["https://source.developers.google.com/projects/loppuprojekti-325208/repos/github_dualic_awa-gcp-final-project/moveable-aliases/master/paths/functions/CovidHistoryDatatoBigQueryTriggerFunction",
             "https://source.developers.google.com/projects/loppuprojekti-325208/repos/github_dualic_awa-gcp-final-project/moveable-aliases/master/paths/functions/LatestCovidDatatoBigQueryTriggerFunction"]
=======
  default = ["https://source.developers.google.com/projects/leo-test-env-1/repos/github_leonbay_testi-ranch/moveable-aliases/master/paths/functions/bq-data-transfer",
             "https://source.developers.google.com/projects/leo-test-env-1/repos/github_leonbay_testi-ranch/moveable-aliases/master/paths/functions/currencyhistory",
             "https://source.developers.google.com/projects/leo-test-env-1/repos/github_leonbay_testi-ranch/moveable-aliases/master/paths/functions/delete-func",
             "https://source.developers.google.com/projects/leo-test-env-1/repos/github_leonbay_testi-ranch/moveable-aliases/master/paths/functions/todayscurrencies",
             "https://source.developers.google.com/projects/leo-test-env-1/repos/github_leonbay_testi-ranch/moveable-aliases/master/paths/functions/daily-to-history",
             "https://source.developers.google.com/projects/leo-test-env-1/repos/github_leonbay_testi-ranch/moveable-aliases/master/paths/functions/currency-history-to-csv",
             "https://source.developers.google.com/projects/leo-test-env-1/repos/github_leonbay_testi-ranch/moveable-aliases/master/paths/functions/CovidHistoryDatatoBigQueryTriggerFunction",
             "https://source.developers.google.com/projects/leo-test-env-1/repos/github_leonbay_testi-ranch/moveable-aliases/master/paths/functions/LatestCovidDatatoBigQueryTriggerFunction",
             "https://source.developers.google.com/projects/leo-test-env-1/repos/github_leonbay_testi-ranch/moveable-aliases/master/paths/functions/dialogfunction"]
>>>>>>> 4a4ed6fd0563f000af7bfcf027442f618d4f3a38
}

variable "function_name" {
  type = list(string)
<<<<<<< HEAD
  default = ["bq-data-transfer", "currencyhistory", "delete-func", "todayscurrencies", "daily-to-history", "get-covid-history", "get-covid-latest"]
}

variable "function_name2" {
  type = list(string)
  default = ["CovidHistoryDatatoBigQueryTriggerFunction", "LatestCovidDatatoBigQueryTriggerFunction"]
=======
  default = ["bq-data-transfer", "currencyhistory", "delete-func", "todayscurrencies", "daily-to-history", "currency-history-to-csv", "CovidHistoryDatatoBigQueryTriggerFunction", "LatestCovidDatatoBigQueryTriggerFunction","dialogfunction"]
>>>>>>> 4a4ed6fd0563f000af7bfcf027442f618d4f3a38
}

variable "project" {}

variable "region" {}

variable "service_account" {
  default = "loppuprojekti-325208@appspot.gserviceaccount.com"
  #ei varmuutta onko oikein
  }
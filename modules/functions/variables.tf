variable "runtime" {
  type = string
  default = "python37"
}

variable "entrypoint" {
  type = list(string)
  default = ["upload_to_bq","currency_history", "delete_blob", "currency_today", "currenttohistory"]
}

variable "source_repository_url" {
  type = list(string)
  default = ["https://source.developers.google.com/projects/leo-test-env-1/repos/github_leonbay_testi-ranch/moveable-aliases/master/paths/functions/bq-data-transfer",
             "https://source.developers.google.com/projects/leo-test-env-1/repos/github_leonbay_testi-ranch/moveable-aliases/master/paths/functions/currencyhistory",
             "https://source.developers.google.com/projects/leo-test-env-1/repos/github_leonbay_testi-ranch/moveable-aliases/master/paths/functions/delete-func",
             "https://source.developers.google.com/projects/leo-test-env-1/repos/github_leonbay_testi-ranch/moveable-aliases/master/paths/functions/todayscurrencies",
             "https://source.developers.google.com/projects/leo-test-env-1/repos/github_leonbay_testi-ranch/moveable-aliases/master/paths/functions/current-to-history"]
}

variable "function_name" {
  type = list(string)
  default = ["bq-data-transfer", "currencyhistory", "delete-func", "todayscurrencies", "current-to-history"]
}

variable "project" {}

variable "region" {}

variable "service_account" {
  default = "419784467528-compute@developer.gserviceaccount.com"
  }
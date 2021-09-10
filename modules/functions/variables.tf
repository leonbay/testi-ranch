variable "runtime" {
  type = string
  default = "python37"
}

variable "entrypoint" {
  type = list(string)
  default = ["upload_to_bq","currency_history", "currency_today", "delete_blob"]
}

variable "source_repository_url" {
  type = list(string)
  default = ["https://github.com/leonbay/testi-ranch/tree/master/functions/bq-data-transfer",
             "https://github.com/leonbay/testi-ranch/tree/master/functions/currencyhistory",
             "https://github.com/leonbay/testi-ranch/tree/master/functions/delete-func",
             "https://github.com/leonbay/testi-ranch/tree/master/functions/todayscurrencies"]
}

variable "function_name" {
  type = list(string)
  default = ["bq-data-transfer", "currencyhistory", "todayscurrencies", "delete-func"]
}

variable "project" {}

variable "region" {}
variable "runtime" {
  type = string
  default = "python37"
}

variable "entrypoint" {
  type = list(string)
  default = ["upload_to_bq","currency_history", "currency_today", "delete_blob"]
}

#variable "description" {}

variable "source_repository_url" {
  type = list(string)
  default = [""]
}

variable "function_name" {
  type = list(string)
  default = ["bq-data-transfer", "currencyhistory", "todayscurrencies", "delete-func"]
}

variable "project" {}

variable "region" {}

variable "zone" {}
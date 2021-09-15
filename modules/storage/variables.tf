variable "name" {
  type        = list(string)
  default     = ["cloud-function-final-project", "currency-archive-test" "currency-raw-data-json-test", "currency_csv_bucket-test", "covid-archive-test", "covid-raw-data-test"]
  description = "description"
}

variable "region" {}

variable "project" {}



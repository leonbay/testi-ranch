variable "runtime" {
  type = string
  default = "python37"
}

variable "entrypoint" {
  type = list(string)
  default = ["",""]
}

variable "description" {}

variable "source_repository_url" {
  type = list(string)
  default = ["",""]
}

variable "function_name" {
  type = list(string)
  default = ["",""]
}

variable "project" {}

variable "region" {}

variable "zone" {}
variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-a"
}

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
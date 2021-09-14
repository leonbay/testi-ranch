
variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-a"
}

variable "project" {
  type        = string
  default     = "leo-test-env-1"
  description = "description"
}

variable "service_account" {
  default = "terraformaaja@leo-test-env-1.iam.gserviceaccount.com"
  }

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
  default = "419784467528-compute@developer.gserviceaccount.com"
  }
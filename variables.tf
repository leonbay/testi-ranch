
variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-a"
}

variable "project" {
  type        = string
  default     = "loppuprojekti-325208"
}

variable "service_account" {
  default = "loppuprojekti-325208@appspot.gserviceaccount.com"
  #ei varmuutta toimiiko kaikissa jutuissa
  }
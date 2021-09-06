variable "name" {
  type        = list(string)
  default     = ["datafusion-bucket-final-project","backend-bucket-final-project","cloud-function-final-project"]
  description = "description"
}

variable "location" {
  type        = string
  default     = "us-central1-a"
  description = "description"
}

variable "project" {
  type        = string
  default     = "leo-test-env-1"
  description = "description"
}



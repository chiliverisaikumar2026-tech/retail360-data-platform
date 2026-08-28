variable "project_id" {
  description = "GCP project ID for Retail360"
  type        = string
}

variable "region" {
  description = "Primary GCP region"
  type        = string
  default     = "asia-south1"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

locals {
  landing_bucket_name = "retail360-${var.project_id}-${var.environment}-landing"
}
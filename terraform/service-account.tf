resource "google_service_account" "retail360_storage" {
  project = var.project_id

  account_id   = "retail360-storage-sa"
  display_name = "Retail360 Storage Service Account"

  description = "Service account used for Retail360 data lake storage access"

  depends_on = [
    google_project_service.required
  ]
}
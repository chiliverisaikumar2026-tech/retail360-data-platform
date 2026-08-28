output "landing_bucket_name" {
  description = "Retail360 GCS landing bucket"
  value       = google_storage_bucket.landing.name
}

output "landing_bucket_uri" {
  description = "Retail360 GCS landing bucket URI"
  value       = "gs://${google_storage_bucket.landing.name}"
}

output "storage_service_account_email" {
  description = "Storage service account email"
  value       = google_service_account.retail360_storage.email
}
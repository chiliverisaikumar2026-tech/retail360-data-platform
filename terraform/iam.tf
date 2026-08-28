resource "google_storage_bucket_iam_member" "storage_object_admin" {
  bucket = google_storage_bucket.landing.name

  role = "roles/storage.objectAdmin"

  member = google_service_account.retail360_storage.member
}
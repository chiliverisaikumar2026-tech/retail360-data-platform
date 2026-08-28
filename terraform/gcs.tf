resource "google_storage_bucket" "landing" {
  name     = local.landing_bucket_name
  project  = var.project_id
  location = upper(var.region)

  storage_class = "STANDARD"

  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"

  force_destroy = true

  labels = {
    project     = "retail360"
    environment = var.environment
    managed_by  = "terraform"
  }

  depends_on = [
    google_project_service.required
  ]
}

locals {
  landing_folders = toset([
    "landing/customers/",
    "landing/products/",
    "landing/orders/",
    "landing/order_items/",
    "autoloader/checkpoints/",
    "autoloader/schemas/",
    "quarantine/"
  ])
}

resource "google_storage_bucket_object" "folders" {
  for_each = local.landing_folders

  bucket  = google_storage_bucket.landing.name
  name    = each.value
  content = " "
}
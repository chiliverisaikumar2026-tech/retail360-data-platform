locals {
  required_services = toset([
    "storage.googleapis.com",
    "iam.googleapis.com"
  ])
}

resource "google_project_service" "required" {
  for_each = local.required_services

  project = var.project_id
  service = each.value

  disable_on_destroy = false
}
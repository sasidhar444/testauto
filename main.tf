provider "google" {
    credentials = file("${var.credentials}")
    project = var.gcp_project
    region = var.region
}
# Create a GCS Bucket
resource "google_storage_bucket" "my_bucket" {
    name     = var.bucket_name
    location = var.region
}
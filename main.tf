resource "google_storage_bucket" "tf-bucket" {
  project       = var.gcp_project
  name          = var.bucket-name
  location      = var.gcp_region
  force_destroy = true
  storage_class = var.storage-class
  versioning {
    enabled = true
  }
}
resource "google_storage_bucket_object" "picture" {
  name   = "git"
  source = "github.png"
  bucket = "store-bucket85558"
}

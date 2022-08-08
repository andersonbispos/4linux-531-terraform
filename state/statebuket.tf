resource "google_storage_bucket" "statebucket" {
  name          = "abs-terraform-treinamento"
  location      = "US-EAST1"
  force_destroy = true

  versioning {
    enabled = true
  }
}
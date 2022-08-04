resource "google_compute_subnetwork" "subnet-tf-caixa-central1" {
  name          = "subnet-tf-caixa-central1"
  ip_cidr_range = "10.10.10.0/24"
  region        = "us-central1"
  network       = "vpc-tf-caixa"
}

resource "google_compute_subnetwork" "subnet-tf-caixa-sa-east1" {
  name          = "subnet-tf-caixa-sa-east1"
  ip_cidr_range = "10.10.20.0/24"
  region        = "southamerica-east1"
  network       = "vpc-tf-caixa"
}
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.31.0"
    }
  }

  backend "gcs" {
    credentials = "/Users/anderson/Documents/gcp-svc/terraform-4linux-8209-c8557147cf33.json"
    bucket      = "abs-terraform-treinamento"
    prefix      = "terraform/state"
  }
}

provider "google" {
  credentials = "/Users/anderson/Documents/gcp-svc/terraform-4linux-8209-c8557147cf33.json"
  project     = "terraform-4linux-8209"
  region      = "us-central1"
}
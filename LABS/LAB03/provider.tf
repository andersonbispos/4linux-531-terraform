terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.30.0"
    }
  }

  /* backend "gcs" {
    bucket = "abs2022-state-bucket"
    prefix = "state"
    credentials = "/Users/anderson/Documents/gcp-svc/terraform-4linux-8209-c8557147cf33.json"
  } */

}

provider "google" {
  credentials = "/Users/anderson/Documents/gcp-svc/terraform-lab-357713-c2b3cece8835.json"
  project     = "terraform-lab-357713"
  region      = "us-east1"
}
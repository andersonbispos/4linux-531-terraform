terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.30.0"
    }
  }
}

provider "google" {
  credentials = "/Users/anderson/Documents/gcp-svc/terraform-lab-357713-c2b3cece8835.json"
  project     = "terraform-lab-357713"
  /* region      = "us-east1" */
}
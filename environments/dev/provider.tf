terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.30.0"
    }
  }

  backend "gcs" {
    bucket = "terraform-state-store-made-for-gcp"
    prefix = "terraform-state-dev"
  }
}

provider "google" {
  # Configuration options
  project = "made-for-gcp-459805"
  region  = "us-central1"
}



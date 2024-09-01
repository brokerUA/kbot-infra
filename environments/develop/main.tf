terraform {
  required_version = ">= 1.9.4"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.52.0"
    }
  }

  backend "gcs" {
    bucket = "kbot-terraform-state"
    prefix = "terraform/state"
  }
}

module "gke_cluster" {
  source           = "github.com/brokerUA/tf-google-gke-cluster"
  GOOGLE_REGION    = var.GOOGLE_REGION
  GOOGLE_PROJECT   = var.GOOGLE_PROJECT
  GKE_NUM_NODES    = var.GKE_NUM_NODES
  GKE_MACHINE_TYPE = var.GKE_MACHINE_TYPE
  DISK_SIZE_GB     = var.DISK_SIZE_GB
}
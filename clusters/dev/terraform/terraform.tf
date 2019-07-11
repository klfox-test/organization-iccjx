terraform {
  required_version = ">= 0.12.0"
  backend "gcs" {
    bucket      = "jx-cluster-245615-vulturehoney-terraform-state"
    prefix      = "dev"
  }
}
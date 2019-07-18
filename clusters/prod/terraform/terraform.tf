terraform {
  required_version = ">= 0.12.0"
  backend "gcs" {
    bucket      = "jx-cluster-247119-icc-jx-terraform-state"
    prefix      = "prod"
  }
}
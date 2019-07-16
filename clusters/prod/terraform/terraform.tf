terraform {
  required_version = ">= 0.12.0"
  backend "gcs" {
    bucket      = "jx-cluster-246918-icc-jx-terraform-state"
    prefix      = "prod"
  }
}
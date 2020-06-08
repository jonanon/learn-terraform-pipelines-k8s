terraform {
  backend "remote" {
    organization = var.organization

    workspaces {
      name = var.workspace
    }
  }
}

provider "google" {
  version = "3.10.0"
  project = var.google_project
  region  = var.region
}

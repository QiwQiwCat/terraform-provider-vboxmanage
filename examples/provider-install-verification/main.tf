terraform {
  required_providers {
    vboxmanage = {
      source  = "registry.terraform.io/apriliantocecep/vboxmanage"
    }
  }
}

provider "vboxmanage" {}
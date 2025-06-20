terraform {
  required_providers {
    vboxmanage = {
      source  = "registry.terraform.io/apriliantocecep/vboxmanage"
    }
  }
}

provider "vboxmanage" {}

data "vboxmanage_vms" "vms" {}

output "vms_list" {
  value = data.vboxmanage_vms.vms
}
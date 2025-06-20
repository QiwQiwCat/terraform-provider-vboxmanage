terraform {
  required_providers {
    vboxmanage = {
      source  = "registry.terraform.io/apriliantocecep/vboxmanage"
    }
  }
}

provider "vboxmanage" {}

resource "vboxmanage_createvm" "ubuntu" {
  name = "ubuntu-vm"
  cpus = 2
  memory = 2048
}

output "vm_ubuntu" {
  value = vboxmanage_createvm.ubuntu
}
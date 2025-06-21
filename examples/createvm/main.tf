terraform {
  required_providers {
    vboxmanage = {
      source  = "registry.terraform.io/apriliantocecep/vboxmanage"
    }
  }
}

provider "vboxmanage" {}

resource "vboxmanage_createvm" "ubuntu" {
  name = "ubuntu-vm-64"
  cpus = 3
  memory = 4048
}

output "vm_ubuntu" {
  value = vboxmanage_createvm.ubuntu
}
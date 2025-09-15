terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.83.1"  
    }
  }
}

provider "proxmox" {
  endpoint          = var.api_url
  api_token         = var.terraform_api_token
  insecure          = true                 
}
  
 provider "proxmox" { 
   alias            = "dev-1"
   endpoint         = var.api_url
   api_token        = var.dev1_api_token
   insecure         = true 
 }

  provider "proxmox" { 
   alias            = "dev-2"
   endpoint         = var.api_url
   api_token        = var.dev2_api_token
   insecure         = true 
 }

  provider "proxmox" { 
   alias            = "dev-3"
   endpoint         = var.api_url
   api_token        = var.dev3_api_token
   insecure         = true 
 }

resource "proxmox_virtual_environment_vm" "alpine-master" {
  node_name = "infrak8-prod1"
  name      = "alpine-master"
  vm_id     = 101

  cpu {
    cores = 2
  }

  memory {
    dedicated = 2048
  }

  disk {
    datastore_id = "local-lvm"
    interface    = "scsi0"
    size         = 20
  }

  network_device {
    bridge = "vmbr0"
  }

  cdrom {         
    file_id      = "local:iso/alpine-standard-3.22.1-x86_64.iso"
  }
}

resource "proxmox_virtual_environment_vm" "alpine-1" {
  node_name = "infrak8-prod1"
  name      = "alpine-1"
  vm_id     = 102

  cpu {
    cores = 2
  }

  memory {
    dedicated = 2048
  }

  disk {
    datastore_id = "local-lvm"
    interface    = "scsi0"
    size         = 20
  }

  network_device {
    bridge = "vmbr0"
  }

  cdrom {        
    file_id      = "local:iso/alpine-standard-3.22.1-x86_64.iso"
  }
}

resource "proxmox_virtual_environment_vm" "alpine-2" {
  node_name = "infrak8-prod1"
  name      = "alpine-2"
  vm_id     = 103

  cpu {
    cores = 2
  }

  memory {
    dedicated = 2048
  }

  disk {
    datastore_id = "local-lvm"
    interface    = "scsi0"
    size         = 20
  }

  network_device {
    bridge = "vmbr0"
  }

  cdrom {        
    file_id      = "local:iso/alpine-standard-3.22.1-x86_64.iso"
  }
}
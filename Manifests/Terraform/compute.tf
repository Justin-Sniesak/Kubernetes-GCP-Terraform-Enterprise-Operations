#Provision Golang Ubuntu VMs
resource "google_compute_instance" "go-1" {
  name         = "ubuntu-1"
  machine_type = "e2-micro"
  zone         = "us-west1-b"

  boot_disk {
    initialize_params {
      image = "projects/ubuntu-os-cloud/global/images/ubuntu-2504-plucky-amd64-v20250828"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}

resource "google_compute_instance" "go-2" {
  name         = "ubuntu-2"
  machine_type = "e2-micro"
  zone         = "us-west1-b"

  boot_disk {
    initialize_params {
      image = "projects/ubuntu-os-cloud/global/images/ubuntu-2504-plucky-amd64-v20250828"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}

resource "google_compute_instance" "go-3" {
  name         = "ubuntu-3"
  machine_type = "e2-micro"
  zone         = "us-west1-b"

  boot_disk {
    initialize_params {
      image = "projects/ubuntu-os-cloud/global/images/ubuntu-2504-plucky-amd64-v20250828"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
#Provision Rocky nodJS VMs
resource "google_compute_instance" "nodeJS-1" {
  name         = "rocky-1"
  machine_type = "e2-micro"
  zone         = "us-west1-b"

  boot_disk {
    initialize_params {
      image = "projects/rocky-linux-cloud/global/images/rocky-linux-9-optimized-gcp-v20250813"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}

resource "google_compute_instance" "nodeJS-2" {
  name         = "rocky-2"
  machine_type = "e2-micro"
  zone         = "us-west1-b"

  boot_disk {
    initialize_params {
      image = "projects/rocky-linux-cloud/global/images/rocky-linux-9-optimized-gcp-v20250813"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}

#Provision Debian ollama VMs
resource "google_compute_instance" "llama-1" {
  name         = "debian-1"
  machine_type = "e2-micro"
  zone         = "us-west1-b"

  boot_disk {
    initialize_params {
      image = "projects/debian-cloud/global/images/debian-12-bookworm-v20250812"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}

resource "google_compute_instance" "llama-2" {
  name         = "debian-2"
  machine_type = "e2-micro"
  zone         = "us-west1-b"

  boot_disk {
    initialize_params {
      image = "projects/debian-cloud/global/images/debian-12-bookworm-v20250812"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}

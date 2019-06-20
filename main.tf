# Define the provider that is going to be used

provider "google" {
  credentials = "${file("/root/creds.json")}"
  project     = "horizontal-cab-241215"
  region      = "us-central1"
  zone        = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name                    = "terraform-net"
  auto_create_subnetworks = "true"
}

# Define a google_compute_instance resource

resource "google_compute_instance" "vm_test_1" {
  name         = "terraform-created"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network       = "${google_compute_network.vpc_network.name}"
    access_config = {}
  }
}

provider "google" {
    credentials = file("${var.google_credentials}")
    project = "jenkins-452004"

}

resource "google_compute_instance" "vm_instance" {
  name         = "test1"
  machine_type = "e2-medium"
  zone         = "us-central1-c"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}

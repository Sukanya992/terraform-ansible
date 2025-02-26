provider "google" {
    credentials = file("key.json")
    project = "jenkins-452004"

}resource "google_compute_instance" "default" {
  name = "vm1"
  zone = "us-central1-a"
  machine_type = "e2-medium"
  
  boot_disk {
    initialize_params {
      image="debian-12"
    }
  }
  network_interface {
    network = "default"
  }
}

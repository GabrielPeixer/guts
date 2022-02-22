resource "google_compute_instance" "guts" {
  project      = "guts-341516"
  name         = "terraform"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "ubuntu-2004-focal-v20220204"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}
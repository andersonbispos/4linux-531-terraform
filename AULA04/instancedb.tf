resource "google_compute_instance" "instancedb" {
  name         = "instancedb"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet-tf-caixa-central1.self_link

    access_config {
      // Ephemeral public IP
    }
  }

  attached_disk {
    source = google_compute_disk.default.self_link
  }
}
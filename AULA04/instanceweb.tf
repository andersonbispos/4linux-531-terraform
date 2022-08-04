resource "google_compute_instance" "instanceweb" {
  name         = "instanceweb"
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

  depends_on = [
    google_compute_instance.instancedb
  ]
}
resource "google_compute_instance" "instanceweb" {
  name         = "instanceweb"
  machine_type = var.default_machine_type
  zone         = "us-central1-a"

  tags = ["web"]

  boot_disk {
    initialize_params {
      image = var.default_image
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet-tf-caixa-central1.self_link

    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = file(var.provison_backend_path)

  depends_on = [
    google_compute_instance.instancedb
  ]
}
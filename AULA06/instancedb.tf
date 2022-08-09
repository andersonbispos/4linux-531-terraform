resource "google_compute_instance" "instancedb" {
  name         = local.db_vm_name
  machine_type = var.default_machine_type
  zone         = local.db_data_zone

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

  attached_disk {
    source = google_compute_disk.default.self_link
  }
}
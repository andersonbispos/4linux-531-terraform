resource "google_compute_instance" "vm_tf_caixa" {
  name         = "vm-caixa1"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = google_compute_network.vpc-tf-caixa.self_link
    subnetwork = google_compute_subnetwork.subnet-tf-caixa-central1.self_link

    access_config {
      // Ephemeral public IP
    }
  }
}
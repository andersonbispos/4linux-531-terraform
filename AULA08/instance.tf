resource "google_compute_instance" "vm_caixa_modelo" {

  for_each = var.vm_defs

  /* name         = var.vm_defs["vm_name"]
  zone         = var.vm_defs["vm_zones"] */
  name         = each.key
  zone         = each.value
  machine_type = "e2-micro"

  tags = ["web"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = data.google_compute_network.my-network.self_link

    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = file(var.provision_backend_path)
}
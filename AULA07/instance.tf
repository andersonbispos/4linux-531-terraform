resource "google_compute_instance" "vm_caixa_modelo" {

  count = length(var.web_zones)

  /* name         = format("%s-%s-%s", var.instances_prefix, count.index, data.google_compute_network.my-network.name) */
  name         = var.vm_names[count.index]
  machine_type = "e2-micro"
  zone         = var.web_zones[count.index]

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
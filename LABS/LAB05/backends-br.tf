resource "google_compute_instance" "vm-modelo-br" {

  count = length(var.vm_names_br)

  name         = var.vm_names_br[count.index]
  machine_type = var.default_machine_type
  zone         = var.vm_zones_br[count.index]

  tags = ["webapp"]

  boot_disk {
    initialize_params {
      image = var.default_image
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.modelo-subnets[1].self_link

    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = file(var.back_provision_script)

  metadata = {
    VmDnsSetting = "GlobalDefault"
  }
}
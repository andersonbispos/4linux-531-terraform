resource "google_compute_instance" "vm" {
  name         = var.vm_name
  machine_type = var.vm_type
  zone         = var.vm_zone

  boot_disk {
    initialize_params {
      image = var.vm_image
    }
  }

  network_interface {
    network = var.vm_network
    subnetwork = var.vm_subnet

      access_config {
        
      }
  }

  metadata_startup_script = file(var.metadata_startup_script)
}
resource "google_compute_instance" "vm_teste" {
  name         = var.vm_name
  machine_type = "e2-micro"
  zone         = var.vm_zone

  boot_disk {
    initialize_params {
      image = var.vm_image
    }
  }

  network_interface {
    network = var.vm_network
  }
}
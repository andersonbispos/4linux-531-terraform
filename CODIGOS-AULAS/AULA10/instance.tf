resource "google_compute_instance" "vm_teste" {
  name         = "vm1"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = module.vpc.vpc_self_link
  }
}
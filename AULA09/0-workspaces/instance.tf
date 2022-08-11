resource "google_compute_instance" "instance1" {

  count = terraform.workspace == "default" ? 3 : 1

  name         = format("%s-%s-%s", var.vm_name, terraform.workspace, count.index)

  machine_type = var.instance_size[terraform.workspace]
  zone         = "us-central1-a"

  /* project = var.wrk_project[terraform.workspace] */

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
      
    }
  }
}
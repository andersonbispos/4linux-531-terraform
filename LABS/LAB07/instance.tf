resource "google_compute_instance" "instance_teste" {

  count = terraform.workspace == "prod" ? 2 : 1

  name         = format("%s-%s-%s", "webback", terraform.workspace, count.index)
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  tags = ["allow-ports"]

  boot_disk {
    initialize_params {
      image = var.instance_image[terraform.workspace]
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.wrkspc_subnet.self_link

    access_config {

    }
  }

  /* network_interface {
    subnetwork = format("%s-%s", var.vpc_name, terraform.workspace)

    access_config {
      
    }
  }

  depends_on = [
    google_compute_subnetwork.subnet1
  ] */
}
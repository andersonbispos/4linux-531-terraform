resource "google_compute_instance_template" "appserver-template" {
  name        = "appserver-template-us"
  description = "This template is used to create app server instances."

  machine_type   = "e2-medium"
  can_ip_forward = false

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
  }

  tags = ["appserver"]

  disk {
    source_image = "debian-cloud/debian-11"
  }

  network_interface {
    network = google_compute_network.vpc_tf_projeto.self_link

    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = file(var.back_provision_script)

}


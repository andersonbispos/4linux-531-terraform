output "web_external_ip" {
  value = google_compute_instance.instanceweb.network_interface.0.access_config.0.nat_ip
}

output "dbserver_external_ip" {
  value = google_compute_instance.instancedb.network_interface.0.access_config.0.nat_ip
}
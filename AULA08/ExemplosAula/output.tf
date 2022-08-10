/* output "web1_access_ip" {
  value = google_compute_instance.web1.network_interface.0.access_config.0.nat_ip
} */

/* output "webs_access_ips" {
  value = google_compute_instance.vm_caixa_modelo.*.network_interface.0.access_config.0.nat_ip
} */
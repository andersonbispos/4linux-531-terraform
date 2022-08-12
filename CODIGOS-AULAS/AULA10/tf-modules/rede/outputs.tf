output "vpc_self_link" {
  value = google_compute_network.vpc_module.self_link
}

output "vpc_name" {
  value = google_compute_network.vpc_module.name
}
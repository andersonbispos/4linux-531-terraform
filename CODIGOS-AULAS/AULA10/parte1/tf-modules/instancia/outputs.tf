output "vm_self_link" {
  description = "vm_self_link"
  value = google_compute_instance.vm_modelo.self_link
}

output "vm_name" {
  description = "vm_name"
  value = google_compute_instance.vm_modelo.name
}
output "vm_name" {
  description = "vm name"
  value       = google_compute_instance.vm.name
}

output "vm_id" {
  description = "VM id"
  value       = google_compute_instance.vm.id
}

output "vm_self_link" {
  description = "VM self link"
  value       = google_compute_instance.vm.self_link
}

output "vm_zone" {
  description = "vm_zone"
  value       = google_compute_instance.vm.zone
}

output "vm_nat_ip" {
  description = "vm_nat_ip"
  value       = google_compute_instance.vm.network_interface.0.access_config.0.nat_ip
}
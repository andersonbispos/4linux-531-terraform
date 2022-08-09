// ao final da aula esse recurso de disco foi adicionado à instancia instancedb
resource "google_compute_disk" "default" {
  name = "test-disk"
  type = "pd-balanced"
  zone = local.db_data_zone
  size = var.db_disk_size
}
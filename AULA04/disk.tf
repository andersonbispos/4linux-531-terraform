/* resource "google_compute_disk" "default" {
  // Este recurso foi utilizado como um exemplo para o comando terraform import
  name  = "test-disk"
  zone  = "us-central1-a"
} */

// ao final da aula esse recurso de disco foi adicionado à instancia instancedb
resource "google_compute_disk" "default" {
  name  = "test-disk"
  type  = "pd-balanced"
  zone  = "us-central1-a"
  size = 50
}
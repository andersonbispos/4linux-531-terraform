resource "google_compute_subnetwork" "modelo-subnets" {
  count = length(var.default_subnet_regions)

  /* name          = format("%s-%s", "subnet", var.vpc_name) */
  name          = format("%s-%s-%s", "subnet", var.vpc_name, count.index)
  ip_cidr_range = var.default_subnets_cidr[count.index]
  region        = var.default_subnet_regions[count.index]
  network       = google_compute_network.tf-vpc-lab.self_link
}
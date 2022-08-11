resource "google_compute_region_instance_group_manager" "appserver-us" {
  name = "appserver-us"

  base_instance_name         = "webapps"
  region                     = var.instance_group_regions[0]
  /* distribution_policy_zones  = ["us-central1-a", "us-central1-f"] */

  version {
    instance_template = google_compute_instance_template.default.self_link
  }

  target_size = 3
}
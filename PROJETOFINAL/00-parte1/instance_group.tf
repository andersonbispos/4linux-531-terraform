resource "google_compute_region_instance_group_manager" "appserver-us1" {
  name = "appserver-us1"

  base_instance_name = "appserver-us1"
  region             = var.instance_group_regions[0]

  version {
    instance_template = google_compute_instance_template.appserver-template.self_link
  }

  target_size = var.instance_group_sizes[0]

}

resource "google_compute_region_instance_group_manager" "appserver-us2" {
  name = "appserver-us2"

  base_instance_name = "appserver-us2"
  region             = var.instance_group_regions[1]

  version {
    instance_template = google_compute_instance_template.appserver-template.self_link
  }

  target_size = var.instance_group_sizes[1]

}

resource "google_compute_region_instance_group_manager" "appserver-br" {
  name = "appserver-br"

  base_instance_name = "appserver-br"
  region             = var.instance_group_regions[2]

  version {
    instance_template = google_compute_instance_template.appserver-template.self_link
  }

  target_size = var.instance_group_sizes[2]

}
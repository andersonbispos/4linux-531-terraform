resource "google_compute_region_instance_group_manager" "appserver-group-template" {
  
  count = length(var.instance_group_regions)

  name = format("%s-%s", "appserver-group", var.instance_group_regions[count.index])

  base_instance_name = format("%s-%s", "appserver", var.instance_group_regions[count.index])
  region             = var.instance_group_regions[count.index]

  version {
    instance_template = google_compute_instance_template.appserver-template.self_link
  }

  target_size = var.instance_group_sizes[count.index]

}
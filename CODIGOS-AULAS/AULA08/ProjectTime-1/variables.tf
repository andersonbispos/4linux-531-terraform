variable "default_instance_type" {
  type    = string
  default = "e2-micro"
}

variable "default_image" {
  type    = string
  default = "debian-cloud/debian-11"
}

variable "provision_backend_path" {
  type    = string
  default = "./scripts/prov-back.sh"
}

variable "instance_group_regions" {
    type = list
    default = ["us-central1","southamerica-east1"]
}
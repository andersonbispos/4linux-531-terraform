variable "vpc_name" {
  type    = string
  default = "vpc-workspace"
}

variable "instance_image" {
  type = map(string)
  default = {
    prod = "debian-cloud/debian-11"
    dev  = "debian-cloud/debian-10"
  }
}
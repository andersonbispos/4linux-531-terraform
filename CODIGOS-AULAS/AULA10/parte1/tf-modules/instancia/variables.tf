variable "vm_zone" {
    description = "zone"
    type = string
}

variable "vm_name" {
    description = "zone"
    type = string
    default = "vm1"
}


variable "vm_network" {
  description = "VPC onde a vm sera instanciada"
  type = string
  default = "default"
}

variable "vm_image" {
    description = "Imagem"
    type = string
    default = "debian-cloud/debian-10"
}
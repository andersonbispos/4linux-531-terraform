variable "vm_network" {
  description = "VPC onde a vm sera instanciada"
  type = string
}

variable "vm_subnet" {
  description = "SUBNET onde a vm sera instanciada"
  type = string
}

variable "vm_name" {
    description = "zone"
    type = string
    default = "vm1"
}

variable "vm_zone" {
    description = "zone"
    type = string
    default = "us-central1-a"
}

variable "vm_image" {
    description = "Imagem"
    type = string
    default = "debian-cloud/debian-10"
}

variable "vm_type" {
    description = "Tamanho da VM"
    type = string
    default = "e2-micro"
}

variable "vm_metadata_startup_script" {
    description = "caminho do script de inicializacao"
    type = string
    default = null
}


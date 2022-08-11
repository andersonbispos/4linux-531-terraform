variable "rede_gerenciada" {
  type        = bool
  description = "Define se as subnets serao criadas automaticamente ou nao"
}

variable "db_disk_size" {
  type        = number
  description = "tamanho do disco de dados do BD"
  default     = 30
}

variable "default_machine_type" {
  type    = string
  default = "e2-micro"
}

variable "default_image" {
  type    = string
  default = "debian-cloud/debian-10"
}

variable "provison_command" {
  type    = string
  default = "sudo apt update; sudo apt-get install nginx -y"
}

variable "provison_backend_path" {
  type    = string
  default = "./scripts/prov-back.sh"
}

variable "vpc_name" {
  type        = string
  description = "Nome da VPC a ser criada"
  default     = "vpc-tf-caixa"
}

variable "subnet1_name" {
  type    = string
  default = "subnet1"
}

variable "subnet1_region" {
  type    = string
  default = "us-central1"
}

variable "subnet1_cidr" {
  type    = string
  default = "192.168.10.0/24"
}
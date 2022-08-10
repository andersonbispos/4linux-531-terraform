// VARIÁVEIS PARA A VPC

variable "rede_gerenciada" {
  type    = bool
  default = false
}

variable "vpc_name" {
  type        = string
  description = "Nome da VPC"
  default     = "vpc-lab05"
}

// VARIÁVEIS PARA AS SUBNETS

variable "default_subnet_regions" {
  type        = list(any)
  description = "Regioes padroes a serem criadas as subnets"
  default     = ["us-east1", "southamerica-east1"]
}

variable "default_subnets_cidr" {
  type    = list(any)
  default = ["192.168.10.0/24", "192.168.20.0/24"]
}

// VARIÁVEIS PARA AS INSTÂNCIAS

variable "default_image" {
  type    = string
  default = "debian-cloud/debian-11"
}

variable "default_machine_type" {
  type    = string
  default = "e2-micro"
}

variable "back_provision_script" {
  default     = "./scripts/prov-back.sh"
  type        = string
  description = "Caminho para o script de provisionamento"
}

variable "front_provision_script" {
  default     = "./scripts/prov-front.sh"
  type        = string
  description = "Caminho para o script de provisionamento"
}

variable "vm_names_us" {
  type        = list(any)
  description = "Nome da VMS"
  default     = ["webback1", "webback2"]
}

variable "vm_zones_us" {
  type        = list(any)
  description = "Zonas da VMS"
  default     = ["us-east1-b", "us-east1-c"]
}

variable "vm_names_br" {
  type        = list(any)
  description = "Nome da VMS"
  default     = ["webback3", "webback4"]
}

variable "vm_zones_br" {
  type        = list(any)
  description = "Zonas da VMS"
  default     = ["southamerica-east1-a", "southamerica-east1-b"]
}






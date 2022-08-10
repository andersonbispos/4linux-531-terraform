variable "instances_prefix" {
  default = "vmweb"
}

variable "qtd_instances" {
  default = 2
}

variable "provision_backend_path" {
  type    = string
  default = "./scripts/prov-back.sh"
}

// exemplos de listas - acessado via indice 'count'

variable "vm_names" {
  type    = list(any)
  default = ["web1", "web2", "web3"]
}

variable "web_zones" {
  type    = list(any)
  default = ["us-central1-a", "southamerica-east1-c", "us-east1-c"]
}

//exemplo de set

variable "vm_name_set" {
  type    = set(any)
  default = ["vm9", "vm5", "vm4", "vm5", "vm5", "vm8"]
}

//exemplo de map estatico - acessado via chave

variable "vmweb1_defs" {
  type        = map(string)
  description = "Nome da VMS"
  default = {
    vm_name = "vm1"
    vm_zone = "us-east1-b"
  }
}

// exemplos de map dinâmico - acessado via indice 'for_each'

variable "vm_defs" {
  type        = map(string)
  description = "Nome da VMS"
  default = {
    web1 = "us-central1-a",
    web2 = "southamerica-east1-c",
    web3 = "us-east1-c"
  }
}

variable "tuple" {
  default = [3, "elementos", "diferentes", true]
  type    = tuple([number, string, string, bool])
}

variable "object" {
  default = { name = "Alfa", region = "southamerica-east1", amount = 5, tags = ["prod", "terraform"] }
  type = object({
    name   = string
    region = string
    amount = number
    tags   = list(string)
  })
}
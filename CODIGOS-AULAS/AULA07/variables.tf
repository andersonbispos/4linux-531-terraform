variable "instances_prefix" {
  default = "vmweb"
}

variable "qtd_instances" {
  default = 2
}

variable "vm_names" {
  type    = list(any)
  default = ["web1", "web2", "web3"]
}

variable "web_zones" {
  type    = list(any)
  default = ["us-central1-a", "southamerica-east1-c", "us-east1-c"]
}

variable "provision_backend_path" {
  type    = string
  default = "./scripts/prov-back.sh"
}


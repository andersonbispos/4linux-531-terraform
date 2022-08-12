variable "auto_create_subnetworks" {
  description = "Definie se devem ser criadas subnets automaticamente"
  type = bool
}

variable "vpc_name" {
    description = "Nome da VPC"
    type = string
    default = "vpc_module"
}

variable "vpc_description" {
    description = "Descricao da finalidade da VPC"
    type = string
    default = "vpc de exemplo de modulos"
}

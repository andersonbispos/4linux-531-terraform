variable "vm_name" {
    type = string
    default = "teste"  
}

variable "instance_size" {
    type = map(string)
    default = {
        default = "e2-medium"
        dev = "e2-micro"
    }
}

variable "wrk_project" {
    type = map(string)
    default = {
        default = "terraform-4linux-8209"
        dev = "terraform-lab-357713"
    }
}


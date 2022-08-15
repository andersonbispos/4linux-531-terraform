/* module "rede" {
    # source = "github.com/andersonbispos/tf-gcp-modules.git/rede" <- modelo de URL pra repositorio git publico
    source = "git::https://github.com/andersonbispos/tf-gcp-modules.git//vpc"

    vpc_name = "vpc-remote-module"
    vpc_project = "terraform-4linux-8209"

    auto_create_subnetworks = false
} */

module "rede" {
    source  = "terraform-google-modules/network/google//modules/vpc"
    version = "= 5.2.0"

    project_id   = "terraform-4linux-8209"
    network_name = "vpc-modulo-remoto"
}

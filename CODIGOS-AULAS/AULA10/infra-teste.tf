module "vpc" {
    source = "./tf-modules/rede/"

    vpc_name = "vpc-exemplo"
    auto_create_subnetworks = false
}


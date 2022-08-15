module "network" {
  source  = "terraform-google-modules/network/google"
  version = "5.2.0"

  project_id   = "terraform-4linux-8209"
  network_name = var.vpc_name

  subnets = [
    {
      subnet_name   = var.vpc_name
      subnet_ip     = "10.10.10.0/24"
      subnet_region = "us-central1"
    },
    {
      subnet_name   = var.vpc_name
      subnet_ip     = "10.10.20.0/24"
      subnet_region = "us-east1"
    }
  ]
}
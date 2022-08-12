## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_instance.vm_teste](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vm_image"></a> [vm\_image](#input\_vm\_image) | Imagem | `string` | `"debian-cloud/debian-10"` | no |
| <a name="input_vm_name"></a> [vm\_name](#input\_vm\_name) | zone | `string` | `"vm1"` | no |
| <a name="input_vm_network"></a> [vm\_network](#input\_vm\_network) | VPC onde a vm sera instanciada | `string` | `"default"` | no |
| <a name="input_vm_zone"></a> [vm\_zone](#input\_vm\_zone) | zone | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vpc_name"></a> [vpc\_name](#output\_vpc\_name) | vpc\_name |
| <a name="output_vpc_self_link"></a> [vpc\_self\_link](#output\_vpc\_self\_link) | vpc\_self\_link |

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
| [google_compute_instance.vm](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vm_image"></a> [vm\_image](#input\_vm\_image) | Imagem | `string` | `"debian-cloud/debian-10"` | no |
| <a name="input_vm_metadata_startup_script"></a> [vm\_metadata\_startup\_script](#input\_vm\_metadata\_startup\_script) | caminho do script de inicializacao | `string` | `null` | no |
| <a name="input_vm_name"></a> [vm\_name](#input\_vm\_name) | zone | `string` | `"vm1"` | no |
| <a name="input_vm_network"></a> [vm\_network](#input\_vm\_network) | VPC onde a vm sera instanciada | `string` | n/a | yes |
| <a name="input_vm_subnet"></a> [vm\_subnet](#input\_vm\_subnet) | SUBNET onde a vm sera instanciada | `string` | n/a | yes |
| <a name="input_vm_type"></a> [vm\_type](#input\_vm\_type) | Tamanho da VM | `string` | `"e2-micro"` | no |
| <a name="input_vm_zone"></a> [vm\_zone](#input\_vm\_zone) | zone | `string` | `"us-central1-a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vm_id"></a> [vm\_id](#output\_vm\_id) | VM id |
| <a name="output_vm_name"></a> [vm\_name](#output\_vm\_name) | vm name |
| <a name="output_vm_nat_ip"></a> [vm\_nat\_ip](#output\_vm\_nat\_ip) | vm\_nat\_ip |
| <a name="output_vm_self_link"></a> [vm\_self\_link](#output\_vm\_self\_link) | VM self link |
| <a name="output_vm_zone"></a> [vm\_zone](#output\_vm\_zone) | vm\_zone |

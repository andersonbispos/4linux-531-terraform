#### CRIANDO CHAVE PARA CONTA DE SERVICO NA GCP

1. [Create Service Account](https://console.cloud.google.com/apis/credentials/serviceaccountkey "Create Service Account")

#### OBTENDO ID DO PROJETO NO CONSOLE GCP

2. [Project ID](https://console.cloud.google.com/home/dashboard "Project ID")

Referência na apostila: `PÁGINA 39`

---
#### EXPORTANDO VARIAVEIS DE AMBIENTE

1. Adicionar caminho absoluto do arquivo.json que contem sua `ServiceAccountKey` obtida na criação da key:
```sh
export GOOGLE_APPLICATION_CREDENTIALS="/seu/path/para/arquivo.json"
```

2. Adicionar `ID do projeto` GCP:
```sh
export GOOGLE_PROJECT="seu-project-id"
```

---
### ADICIONANDO VARIAVEIS DE AMBIENTE NO BASH PROFILE

```sh
sudo tee -a ~/.bashrc > /dev/null <<EOF
# EXPORTING PROVIDER GCP VARS TO TERRAFORM
export GOOGLE_APPLICATION_CREDENTIALS="/seu/path/para/arquivo.json"
export GOOGLE_PROJECT="seu-project-id"
EOF
```
---
#### RESOLVENDO PROBLEMA DE EXPORT NO WINDOWS

```go
provider "google" {
  project     = "project-id"
  credentials = file("c:/path/para/arquivo.json")
}
```
---

#### COMANDOS DE REFERENCIA

1. Para inicializar o Provider, utilize o comando o comando de inicialização:

```sh
terraform init
```

2. O plano de execução do Terraform irá mostrar no terminal o que será criado ou modificado em sua infraestrutura,caso houver qualquer tipo de alteração de valores o Terraform irá mostrar qual o valor original e qual o novo valor que será inserido.

O comando para planejar o que será criado é o seguinte:

```sh
terraform plan
```

3. Para aplicar de fato sua infraestrutura, o comando é o `apply`, que basicamente é a saída apresentada no comando do “plan”.

```sh
terraform apply 
```

O sub-comando `-auto-approve`, indica que não queremos confirmação para criar infraestrutura.

4. Da mesma forma que se constrói infraestrutura, podemos deletar utilizando o sub-comando destroy.

```sh
terraform destroy
```

Da mesma forma que fizemos com o `apply`, aqui também podemos passar o subcomando `-auto-approve` para não pedir confirmação.

---

#### DOC DE REFERÊNCIA TERRAFORM

1. [Getting Started](https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/getting_started "Getting Started")
2. [Provider Reference](https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/provider_reference "Provider Reference")
3. [HCL Reference Configuration](https://www.terraform.io/docs/language/syntax/configuration.html "HCL Reference Configuration")
4. [terraform init](https://www.terraform.io/docs/cli/commands/init.html "terraform init")
5. [terraform apply](https://www.terraform.io/docs/cli/commands/apply.html "terraform apply")
6. [terraform destroy](https://www.terraform.io/docs/cli/commands/destroy.html "terraform destroy")

#### DOC DE REFERÊNCIA GCP

1. [Disk Types](https://cloud.google.com/compute/docs/disks#disk-types "Disk Types")
2. [Google Compute Network](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network "Google Compute Network")

---

#### Practice Labs - Lab 01: 

Criando configurações iniciais

Instruções:

Para cada laboratório, crie um novo diretório.

Para evitar erros realize cada item do exercício por partes, ou seja, crie e aplique cada parte da sua infraestrutura separadamente, utilize um arquivo .tf separado para cada recurso.

Aproveite parar fazer seus testes, todo novo atributo que for criado, faça sempre o `terraform validate`, `terraform plan` para verificar a saída no output e só depois o `terraform apply` 

Caso haja qualquer erro, leia atentamente o terminal.

1. Crie um novo arquivo de de provider e inicialize o Provider

2. Crie uma nova rede rede gerenciada.

3. Crie um disco de persistente de 30GB, do tipo balanceado.

4. Valide na console da GCP a criação dos itens até aqui.

5. Crie uma instância, na rede default, com um ip público efêmero.

6. Teste o acesso SSH na máquina via console da GCP.

7. Instale o serviço de nginx no servidor: 

```sh
sudo apt-get install nginx -y
```

8. Teste o acesso ao serviço do nginx acessando o ip público da intância.

9. Crie uma regra de firewall liberando, a porta 80 para 0.0.0.0/0, na rede default

10. Teste novamente o acesso ao serviço do nginx acessando o ip público do seu ambiente.

11. Destrua os recursos criados.

12. Valide na console que todos os recursos foram destruídos com sucesso.

`
Obs: lembre-se de ao final destruir sua infraestrutura por questões de billing e manutenção sadia da sua free tier.
`


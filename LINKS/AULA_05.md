#### GERENCIANDO O ESTADO DA SUA INFRAESTRUTURA

Podemos utilizar outro comando para facilitar buscas de recursos por nome, ainda mais conforme sua infrea estiver grande, fica trabalhoso abrir arquivos e procurar nome do recurso que deseja deletar.

O comando para nos ajudar nesta tarefa é:

```sh
terraform state <subcommand> [options] [args]
```

Exemplo:

1. list (listando recursos)

```sh
terraform state list
```

2. rm (removendo recursos)

```sh
terraform state rm
```

---
#### Pratice Labs:

[Types variables](https://www.terraform.io/docs/language/expressions/types.html "Types variables")

Instruções:

Para facilitar a organização, para cada exercício, crie uma pasta em separado. Utilize o terraform plan para realizar os testes de seu script.

Aproveite parar fazer seus testes, todo novo atributo que for criado, faça sempre o `terraform plan` e o `terraform validate` para verificar a saída no output.

Caso houver qualquer erro, leia atentamente o terminal.

- Lembre-se que o objetivo aqui é trabalhar com os diversos tipos de variáveis, ou seja, sempre utilize description e type (string, bool, list e etc) para cada uma das variáveis.

Instruções:

1. Crie uma VPC não auto gerenciada. 

2. Crie uma sub-rede 10.240.1.0/24 e faça o vínculo com a VPC. 

3. Crie uma regra de firewall liberando apenas a porta 80 para 0.0.0.0/0. 

4. Crie uma VM com imagem bootavel Debian, na Network custom

5. Crie um disco de 20GB SSD, faça o vínculo com a máquina virtual. 

`
Obs: lembre-se de ao final destruir sua infraestrutura  por questões de billing e manutenção sadia da sua free tier.
`
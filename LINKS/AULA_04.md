

#### DOC DE REFERÊNCIA TERRAFORM

1. [HCL Reference Configuration](https://www.terraform.io/docs/language/syntax/configuration.html "HCL Reference Configuration")
2. [depends_on](https://www.terraform.io/language/meta-arguments/depends_on "depends_on")
3. [Compute Instance - Attached Disk](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance#nested_attached_disk "Attached Disk")

---
#### Practice Labs - Lab 03: 

Trabalhando com dependências

Instruções:

Para cada laboratório, crie um novo diretório.

Aproveite parar fazer seus testes, todo novo atributo que for criado, faça sempre o `terraform validate`, `terraform plan` para verificar a saída no output.

Quanto solicitado execute o `terraform apply` com o parâmetro 

Caso haja qualquer erro, leia atentamente o terminal.

1. Inicialize o Provider.

2. Crie o código de uma vpc não gerenciada, com o nome tf-vpc-lab, rode apenas o validate e o plan, não aplique a infraestrutura ainda.

3. Crie o código de uma subnet na faixa 192.168.10.0/24 vinculada a vpc, usando uma dependencia implicida, a vpc: tf-vpc-lab. Rode apenas o validate e o plan, não aplique a infraestrutura ainda.

4. Crie uma regra de firewall com o nome 'allow-ssh' liberando a porta 22 para 0.0.0.0/0, na rede tf-vpc-lab, essa regra deve ser criada desabilitada. Rode apenas o validate e o plan, não aplique a infraestrutura ainda.

5. Crie uma regra de firewall com o nome 'allow-default-ports' liberando o protocolo icmp e a porta 80 para 0.0.0.0/0, na rede tf-vpc-lab. Rode apenas o validate e o plan, não aplique a infraestrutura ainda.

6. Aplique a configuração, observe se os elementos foram criados na ordem correta obedecendo as dependências definidas.

7. Valide via `terraform state` e também via console que o ambiente foi criado corretamente.

8. Crie o código de um disco de 30 gigas, do tipo pd-balanced com nome: website. Rode apenas o validate e o plan, não aplique a infraestrutura ainda.

9. Crie o código de uma nova instância, que use a rede vpc-lab02, com um ip público efêmero e com o disco de dados atachado a ela. Faça com que o nginx seja instalado no momento em que o servidor é instanciado sem a necessiade de logar no servidor para realizar a instalação.

10. Aplique o código para criar o disco e a instância e teste o acesso ao serviço do nginx acessando o ip público da intância.

11. Altere o código da regra 'allow-ssh' para habilitar o acesso à instância.

12. Acesse o SSH da instância via console e valide que existem dois discos adicionados. Dica: use o comando `lsblk`.

13. Destrua todo o ambiente e valide que todos os elementos foram removidos via validação do state e também via console.

`
Obs: lembre-se de ao final destruir sua infraestrutura por questões de billing e manutenção sadia da sua free tier.
`



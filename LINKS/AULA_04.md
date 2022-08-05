#### ALTERANDO GRADATIVAMENTE SUA INFRAESTRUTURA

Como temos mais de 1 arquivo, o Terraform irá ler todos os arquivos .tf e irá executar cada um deles, mas não queremos isso neste momento, queremos criar recursos de forma um pouco mais controlada. 
Um dos sub-comandos para o comando `terraform plan/apply/destroy` e o `-target`. 

O comando tem a seguinte sintaxe:

```sh
terraform <ação> -target=recurso.nome_do_recurso
```

Exemplo:

1. plan
```sh
terraform plan -target=google_compute_network.vpc_network
```

2. apply
```sh
terraform apply -target=google_compute_network.vpc_network
```

3. destroy
```sh
terraform plan -target=google_compute_network.vpc_network
```

#### DOC DE REFERÊNCIA TERRAFORM

1. [HCL Reference Configuration](https://www.terraform.io/docs/language/syntax/configuration.html "HCL Reference Configuration")
2. [depends_on](https://www.terraform.io/language/meta-arguments/depends_on "depends_on")
3. [Compute Instance - Attached Disk](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance#nested_attached_disk "Attached Disk")

---
#### Practice Labs - Lab 02: 

Trabalhando com dependências

Instruções:

Para cada laboratório, crie um novo diretório.

Aproveite parar fazer seus testes, todo novo atributo que for criado, faça sempre o `terraform validate`, `terraform plan` para verificar a saída no output.

Crie os arquivo de todos os recursos usando referências implicitas e explictas quando necessário e execute o código apenas no final de cada parte do lab.

Caso haja qualquer erro, leia atentamente o terminal.

1. Inicialize o Provider.

##### Preparando a Rede

**- Na primeira parte** do LAB será criada uma rede não gerenciada, duas subnets e duas regras de firewall, a regra do SSH deve ser desabilitada por padrão.

2. Crie o código de uma vpc não gerenciada, com o nome tf-vpc-lab, rode apenas o validate e o plan, não aplique a infraestrutura ainda.

3. Crie o código de uma subnet1 com faixa 192.168.10.0/24, na região us-east1 vinculada a vpc: tf-vpc-lab. Rode apenas o validate e o plan, não aplique a infraestrutura ainda.

4. Crie o código de uma subnet2 com faixa 192.168.20.0/24, na região southamerica-east1 vinculada a vpc: tf-vpc-lab. Rode apenas o validate e o plan, não aplique a infraestrutura ainda.

5. Crie uma regra de firewall com o nome 'allow-ssh' liberando a porta 22 para 0.0.0.0/0, na rede tf-vpc-lab, **ESSA REGRA DEVE SER CRIADA DESABILITADA.**. Rode apenas o validate e o plan, não aplique a infraestrutura ainda.

6. Crie uma regra de firewall com o nome 'allow-default-ports' liberando o protocolo icmp e a porta 80 para 0.0.0.0/0, na rede tf-vpc-lab. Rode apenas o validate e o plan, não aplique a infraestrutura ainda.

7. Aplique a configuração criada até aquie, observe se os elementos foram criados na ordem correta obedecendo as dependências definidas.

8. Valide via `terraform state list` e também via console que o ambiente foi criado corretamente.

##### Criando o ambiente de processamento a Rede

**- Na segunda parte do LAB** será criado um disco pra dados que vai ser apresentando a instancia de db e duas instâncias de webserver que devem ter uma referência explicita ao servidor dbserver1.

9. Crie o código de um disco de 50 gigas, do tipo pd-ssd com nome: dados, na zona **us-central1-c**. Rode apenas o validate e o plan, não aplique a infraestrutura ainda.

10. Crie o código de uma nova instância, com o nome dbserver1, na subnet2, com um **ip público efêmero** e com o **disco `dados` atachado a ela**. Rode apenas o validate e o plan, não aplique a infraestrutura ainda. **Dica: a instância deve ser criada na mesma zona que o seu disco de dados**.

`
Para as instâncias de webserver abaixo, inclua uma referência explicita de modo que elas só sejam criadas após a criação da instância dbserver1
`

11. Crie o código de duas novas instâncias, com o nomes web1 e web2, nas subnets 1 e 2 respectivamente, com **ip público efêmero**. **Faça com que o nginx seja instalado no momento em que o servidor é instanciado sem a necessiade de logar no servidor para realizar a instalação**. (Dica: verifique na documentação do recurso google_compute_engine pelo parâmetro metadata_startup_script)

```sh Comando instalação Nginx:
sudo apt update; sudo apt-get install nginx -y
```

12. Aplique a configuração criada até aqui, observe se os elementos foram criados na ordem correta obedecendo as dependências definidas.

13. Valide via `terraform state` e também via console que o ambiente foi criado corretamente.

14. Altere o código da regra 'allow-ssh' para habilitar o acesso à instância.

15. Acesse o SSH da instância dbsever1 via console e valide quantos discos existem. Dica: use o comando `lsblk`.

16. Acesse o SSH da instância

17. Destrua todo o ambiente e valide que todos os elementos foram removidos via validação do state e também via console.

`
Obs: lembre-se de ao final destruir sua infraestrutura por questões de billing e manutenção sadia da sua free tier.
`



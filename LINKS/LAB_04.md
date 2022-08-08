
https://www.terraform.io/language/values/variables

### Trabalhando com variáveis - Lab 04: 

Criando configurações iniciais

Instruções:

Para cada laboratório, crie um novo diretório. Caso haja qualquer erro, leia atentamente o terminal. Sempre que possível utilize referências implicitas para garantir que sua infra seja criada na ordem correta.

Durante esse laboratório vamos alterar a infra criada no LAB 02, transformando todos os parâmetros possíveis em `variables` e `locals`.

Além disso será criado uma configuração de output para exibir algumas informações das instâncias criadas. (hostname, zona, nat_ip, network_ip) 

##### Preparando a Rede

1. Crie um novo diretório com o nome LAB04 e copie todos os arquivos .tf do LAB02 para este diretório. (Dica: copie apenas os arquivos .tf, nao copiar o diretorio .terraform nem os arquivos *.tfstate)

2. Crie um novo arquivo variables.tf vazio.

##### Alterando a configuração da rede.

Habilitar firewall ssh via metadado. Somente a instância de banco deve ter ssh liberado

**- Na primeira parte** do LAB criada uma rede não gerenciada, duas subnets e duas regras de firewall, **a regra do SSH deve ser desabilitada por padrão e também**.

3. Crie 1 variável booleana com o nome vpc_gerenciada sem valor padrão. Altere o arquivo network subnete-eua para definir que será usada para definir 

3. Crie 1 variável booleana com o nome subnete-eua para definir que será usada para definir 

2. Crie o código de uma vpc não gerenciada, com o nome tf-vpc-lab, rode apenas o validate e o plan, não aplique a infraestrutura ainda.

3. Crie o código de uma subnet1 com faixa **192.168.10.0/24**, na região **us-east1** vinculada a vpc: tf-vpc-lab. Rode apenas o validate e o plan, não aplique a infraestrutura ainda.

4. Crie o código de uma subnet2 com faixa **192.168.20.0/24**, na região **southamerica-east1** vinculada a vpc: tf-vpc-lab. Rode apenas o validate e o plan, não aplique a infraestrutura ainda.

5. Crie uma regra de firewall com o nome 'allow-ssh' liberando a porta 22 para 0.0.0.0/0, na rede tf-vpc-lab, **ESSA REGRA DEVE SER CRIADA DESABILITADA.**. Rode apenas o validate e o plan, não aplique a infraestrutura ainda.

6. Crie uma regra de firewall com o nome 'allow-default-ports' liberando o protocolo icmp e a porta 80 para 0.0.0.0/0, na rede tf-vpc-lab. Rode apenas o validate e o plan, não aplique a infraestrutura ainda.

7. Aplique a configuração criada até aquie, observe se os elementos foram criados na ordem correta obedecendo as dependências definidas.

8. Valide via `terraform state list` e também via console que o ambiente foi criado corretamente.

##### Alterando o ambiente de processamento para uso de variáveis

**- Na segunda parte do LAB** serão alterados as configurações do ambiente de processamento, para o uso de variáveis e locals.
    
    - Crie um novo arquivo locals e defina um novo `local` com o nome **db_zone**, para definir qual zona deve ser utilizada para criar o disco e 
    também o servidor de banco.
    
    - Crie variáveis para substituir os valores `name`, `machine_type` e `image` para a instância **dbserver1** (defina os valores a serem utilizados como default ou passe os valores em um arquivos terraform.tfvars)

. Crie um arquivo locals.tf e defina um valor `local` com o nome  Altere os parâmetros que definem a zona do disco **dados** e do servidor **dbserver1** para utilizar o local.

9. Crie o código de um disco de 50 gigas, do tipo **pd-ssd** com nome: **dados**, na zona **us-east1-c**. Rode apenas o validate e o plan, não aplique a infraestrutura ainda.

10. Crie o código de uma nova instância, com o nome dbserver1, na subnet1, com um **ip público efêmero** e com o **disco `dados` atachado a ela**. Use a image: `debian-cloud/debian-11`. Rode apenas o validate e o plan, não aplique a infraestrutura ainda. **Dica: a instância deve ser criada na mesma zona que o seu disco de dados**.

`
Para as instâncias de webserver abaixo, inclua uma referência explicita de modo que elas só sejam criadas após a criação da instância dbserver1
`

11. Crie o código de duas novas instâncias, com o nomes web1 e web2, nas subnets 1 e 2 respectivamente, com **ip público efêmero**. **Faça com que o nginx seja instalado no momento em que o servidor é instanciado sem a necessiade de logar no servidor para realizar a instalação**. (Dica: verifique na documentação do recurso google_compute_engine pelo parâmetro metadata_startup_script)

```sh Comando instalação Nginx:
sudo apt update; sudo apt-get install nginx -y
```

12. Aplique a configuração criada até aqui, observe se os elementos foram criados na ordem correta obedecendo as dependências definidas.

13. Valide via `terraform state` e também via console que o ambiente foi criado corretamente.

14. Tente acessar o SSH da instância dbserver1.

15. Altere o código da regra 'allow-ssh' para habilitar o acesso às instâncias.

16. Acesse o SSH da instância dbsever1 via console e valide quantos discos existem. Dica: use o comando `lsblk`.

17. Acesse o SSH da instância web1 via console, rode o comando `lsblk` e compare a saída com a do dbserver1.

18. Em um browser acesse os ips públicos dos servidores web1 e web2 para garantir que o nginx foi instalado.

19. Destrua todo o ambiente e valide que todos os elementos foram removidos via validação do state e também via console.

##### Criando o ambiente completo, com um só comando.

20. Execute novamente o comando apply para recriar todo o ambiente e teste novamente os acessos ao nginx.

19. Destrua todo o ambiente e valide que todos os elementos foram removidos via validação do state e também via console.
`
Obs: lembre-se de ao final destruir sua infraestrutura por questões de billing e manutenção sadia da sua free tier.
`
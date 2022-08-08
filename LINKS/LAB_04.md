
https://www.terraform.io/language/values/variables

### Trabalhando com variáveis - Lab 04: 

Criando configurações iniciais

Instruções:

Para cada laboratório, crie um novo diretório. Caso haja qualquer erro, leia atentamente o terminal. Sempre que possível utilize referências implicitas para garantir que sua infra seja criada na ordem correta.

Durante esse laboratório vamos alterar a infra criada no LAB 02, transformando todos os parâmetros possíveis em `variables` e `locals`.

Além disso será criado uma configuração de output para exibir algumas informações das instâncias criadas. 

##### Preparando a Rede

1. Crie um novo diretório com o nome LAB04 e copie todos os arquivos .tf do LAB02 para este diretório. (Dica: copie apenas os arquivos .tf, nao copiar o diretorio .terraform nem os arquivos *.tfstate)

2. Crie um novo arquivo variables.tf vazio.

##### Alterando a configuração da rede.

**- Na primeira parte** serão alterados as configurações do ambiente de network, para o uso de variáveis e locals. Todas as demais definições de referenciamento, zonas e ips devem permanecer as mesmas do LAB02, apenas substituir nos códigos dos recursos os valores literais por variáveis.

3. Crie 1 variável booleana com o nome `vpc_gerenciada` **sem valor padrão**. Altere o arquivo network.tf para passar a variável como valor para o parâmetro `auto_create_subnetworks`. (Dica: lembre-se de passar o valor false no momento da execução, já que estamos criando uma rede não gerenciada, caso contrário o código de criação das subnets vai falhar.)

4. Crie 1 variável para armazenar o nome a ser usado na VPC, faça a alteração correspondente no arquivo network.tf.

5. Crie variáveis para armazenar os valores `name` e `region` para as subnet1 e subnet2, faça a alteração no arquivo correspondente para passar a usar as variáveis (defina os valores a serem utilizados como default ou passe os valores em um arquivos terraform.tfvars)

6. Altere a regra de firewall com o nome 'allow-ssh':

- A regra do SSH deve passar a ser **habilitada por padrão**.

- Mantenha o `source_range` já especificado e adicione o parâmetro **target_tags** com uma tag: `allow-ssh` (Dica1: consulte o a documentação google_compute_firewall para um exemplo de sintaxe do target_tags).

7. **Valide**, **Planeje** e **Aplique** as configuração alteradas até aqui, observe se os elementos foram criados na ordem correta obedecendo as dependências definidas.

8. Valide via `terraform state list` e também via console que o ambiente foi criado corretamente.

##### Alterando o ambiente de processamento para uso de variáveis

- **Na segunda parte do LAB** serão alterados as configurações do ambiente de processamento, para o uso de variáveis e locals. Todas as demais definições de referenciamento, zonas e ips devem permanecer as mesmas do LAB02, apenas substituir nos códigos dos recursos os valores literais por variáveis.

9.  Crie um novo arquivo locals e defina um novo `local` com o nome **db_zone**, para definir qual zona (us-east1-c) deve ser utilizada para criar o disco e também o servidor de banco.

10.  **Instância dbserver1**: Crie variáveis para armazenar os valores `name`, `machine_type` e `image` para a instância **dbserver1**. Faça a alteração no arquivo correspondente para passar a usar as variáveis. (Defina os valores a serem utilizados como default ou passe os valores em um arquivos terraform.tfvars)

11. **Instâncias webserver1 e webserver2**: Crie variáveis para armazenar os valores de `name`, `machine_type`, `zone`, `image` e  `metadata_startup_script` para as instâncias **webserver1** e **webserver2**. Faça a alteração no(s) arquivo(s) correspondente(s) para passar a usar as variáveis. (defina os valores a serem utilizados como default ou passe os valores em um arquivos terraform.tfvars)

12. Altere o arquivo de definição da instância dbserver1 para adicionar a network **tag**: "allow-ssh". (Dica: verifique a documentação do google_compute_engine)

##### Criando os arquivos de output

13. Crie um novo arquivo de output que exiba na saída as seguintes informações para as 3 instâncias do ambiente:

- hostname;
- zona;
- nat_ip;
- network_ip

14. **Valide**, **planeje** e **aplique** as configurações observe se os elementos foram criados na ordem correta obedecendo as dependências definidas.

15. Valide via `terraform state` e também via console que o ambiente foi criado corretamente.

##### Validando o ambiente criado

16. Tente acessar o SSH da instância web1. (Como a tag `allow-ssh` foi aplicada apenas ao dbserver1, só será possível realizar o ssh para essa instância.

17. Acesse o SSH da instância dbsever1 via console e valide quantos discos existem. Dica: use o comando `lsblk`. (Dica: o disco deve ser listado como um dispositivo `/dev/sdb`)

18. Em um browser acesse os ips públicos dos servidores web1 e web2 para garantir que o nginx foi instalado.

19. Destrua todo o ambiente e valide que todos os elementos foram removidos via validação do state e também via console.

##### Criando o ambiente completo, com um só comando.

20. Execute novamente o comando apply para recriar todo o ambiente e teste novamente os acessos ao nginx.

21. Destrua todo o ambiente e valide que todos os elementos foram removidos via validação do state e também via console.
`
Obs: lembre-se de ao final destruir sua infraestrutura por questões de billing e manutenção sadia da sua free tier.
`
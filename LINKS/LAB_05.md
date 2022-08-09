### Practice Labs - Lab 05: 

Trabalhando com variáveis "complexas"

Instruções:

Para cada laboratório, crie um novo diretório. Caso haja qualquer erro, leia atentamente o terminal.

Utilize referências implicitas e explicitas se necessário.

A idéia durante esse laboratório é especializar ainda mais a infra construída até aqui. Vamos alterar algumas variáveis definidas nos laboratórios anteriores de modo que possamos adicionar mais um nível de especialização e automação na nossa infra.

Para agilizar a execução do LAB procure sempre reaproveitar códigos já escritos nos anteriores.

Para simplificar a validação das alterações crie inicialmente apenas os arquivos que fazem a definição da rede e depois os arquivos que definem a camada de processamento.

Aproveite parar fazer seus testes, todo novo recurso que for criado, faça sempre o `terraform validate`, `terraform plan` para verificar a saída no output.

##### Preparando a Rede

**- Na primeira parte** serão alterados as configurações do ambiente de network, para o uso de funções e variáveis complexas. Todas as demais definições de referenciamento, zonas e ips devem permanecer as mesmas do LAB02.

1. Crie um novo diretório com o nome LAB05.

2. Defina uma vpc não gerenciada, utilize variáveis para o nome da vpc e para o valor booleano que define a subrede como não gerenciada.

3. Crie uma regra de firewall com o nome 'allow-default-ports' liberando o protocolo icmp e as portas TCP 22, 80 para 0.0.0.0/0, para a VPC criada. Aplique uma **target_tag** com o nome `webapp`.

4. Crie 2 subredes nas regiões **us-east1** e **soutamerica-east1**, com as faixas **192.168.10.0/24** e **192.168.20.0/24** respectivamente:

- O arquivo de definição da subnet deve conter apenas um bloco generico sendo incrementado por um `count`.
- Utilizando a função `format` defina nome da subnet utilizando o nome da vpc e o indice da contagem (ex.: subnet-vpc-example-1)
- Use variáveis do tipo list para armazenar as regiões e as faixas a serem utilizadas.
- Use a função `length` baseado na variável de regiões ou faixas para definir o tamanho da contagem.

5. Defina um output que exiba ao final do apply o nome das subnets criadas.

5. **Valide**, **Planeje** e **Aplique** as configuração alteradas até aqui, observe se os elementos foram criados na ordem correta obedecendo as dependências definidas.

6. Valide via `terraform state list` e também via console que o ambiente foi criado corretamente.

##### Adicionando o ambiente de processamento a Rede

**- Na segunda parte do LAB** serão criados 4 servidores WEB de backend e também 1 servidor de frontend que será utilizado para balancear o tráfego entre os servidores backend. Utilize os scripts de provisionamentos disponibilizados para configurar os servidores de back e o de front após durante o provisionamento dos mesmos.

7. Criar 4 instâncias de backend:

- O trecho ou arquivo de definição dos backends deve conter apenas um bloco generico sendo incrementado por um `count`.
- Use variáveis do tipo lista para armazenar os nomes e as zonas onde as instâncias devem ser provisionadas:
    - Nomes das instâncias: webback1, webback2, webback3 e webback4. 
    - Zonas das instâncias: soutamerica-east1-a, soutamerica-east1-b, us-east1-b e us-east1-c

`
Como iremos usar um load balancer no nginx os nomes dos instâncias precisam ser conhecidas previamente por isso não estamos definindo esses nomes dinâmicamente como no caso das subnets
`


- 

- Criar 2 instâncias de backend, 2 na região **us-east1** e 2 na região **soutamerica-east1**, com os nomes **webback1, webback2, webback3** e **webback4**, respectivamente. Provisione o **Nginx** nas 4 instâncias. (**Dica:** lembre-se que na hora de especificars as instâncias deve ser informado a zona a ser utilizada não somente a região.)

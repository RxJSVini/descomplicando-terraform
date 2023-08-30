# Fundamentos do terraform:

### Blocos
No Terraform, os blocos são a estrutura básica para definir recursos, configurações e estruturas. Eles são delimitados por chaves {}. Um bloco começa com a declaração do tipo (por exemplo, provider, resource, variable) e contém os argumentos relevantes para esse tipo. Por exemplo, um bloco de recurso define um recurso específico, como uma instância de máquina virtual ou um banco de dados.

#
### Exemplo de um bloco de recurso:

resource "aws_instance" "example" {
   ami = "ami-0c55b159cbfafe1f0"
      instance_type = "t2.micro"
}
#


### Argumentos:
Dentro de um bloco, você especifica argumentos que definem as configurações para o recurso. Os argumentos têm uma sintaxe de chave-valor, onde a chave é o nome do argumento e o valor é o valor a ser atribuído a esse argumento. Os argumentos variam dependendo do tipo de bloco que você está usando.

No exemplo acima, ami e instance_type são argumentos do recurso aws_instance.

#

### Identificadores:
Os identificadores são usados para nomear e referenciar recursos e outros elementos no código do Terraform. Eles são definidos como uma combinação de letras, números e sublinhados. Por exemplo, no bloco de recurso aws_instance acima, example é o identificador do recurso.

#
### Comentários:

Comentários são usados para adicionar explicações ou notas ao código, mas não têm impacto na execução do Terraform. Eles são precedidos por # e podem ser usados em uma linha ou em várias linhas.

***Isso é um comentário em uma única linha***

/*
  Este é um comentário
  de múltiplas linhas.
*/



#

### Estado no terraform

O estado (state) é um conceito fundamental no Terraform. Ele representa o estado atual da sua infraestrutura como código, incluindo todos os recursos que foram criados, modificados ou destruídos por meio do Terraform. O estado é usado pelo Terraform para rastrear quais recursos existem, suas configurações e metadados associados.

O Terraform usa o estado para entender o que deve ser feito durante as operações, como terraform plan, terraform apply e terraform destroy. Quando você executa terraform apply, o Terraform compara o estado atual com a configuração desejada no seu código e determina quais alterações devem ser feitas na infraestrutura.

A principal função do estado é manter o controle da realidade da infraestrutura. Ele garante que o Terraform tenha uma visão precisa dos recursos existentes e possa tomar decisões informadas sobre quais alterações são necessárias.

O estado é armazenado em um arquivo local chamado terraform.tfstate por padrão. No entanto, para ambientes de trabalho colaborativos ou ao usar um sistema de CI/CD, é recomendado armazenar o estado de forma centralizada e acessível para que todos os membros da equipe possam colaborar.


#
### Armazenamento Remoto (recomendado): 

AWS S3: O Amazon S3 é uma opção popular para armazenar o estado do Terraform devido à sua confiabilidade e escalabilidade.
Azure Blob Storage: Semelhante ao S3, o Azure Blob Storage da Microsoft é uma escolha sólida.
Google Cloud Storage: Para quem usa o Google Cloud Platform, o Google Cloud Storage é uma opção nativa.
Terraform Cloud (antigo Terraform Enterprise):
A HashiCorp oferece o Terraform Cloud, uma plataforma que inclui recursos de gerenciamento de estado, controle de acesso e colaboração em equipes.

Consul, etcd ou outros backends:
Alguns ambientes corporativos podem usar serviços de chave-valor distribuídos como Consul ou etcd para armazenar o estado do Terraform.

Armazenar o estado de forma remota é uma prática recomendada porque oferece vários benefícios, como:

Colaboração facilitada entre equipes.
Histórico de versões.
Recuperação de desastres.
Maior segurança.
Independentemente da opção escolhida, é importante tratar o estado como um ativo crítico e protegê-lo de acessos não autorizados. Certifique-se de seguir as práticas recomendadas de segurança ao armazenar e gerenciar o estado do Terraform.


#
### Principais comandos do Terraform
1. **terraform init**:
   Inicializa um diretório do Terraform. Isso baixa os plugins necessários para os provedores especificados no código.

2. **terraform plan**:
   Gera um plano de execução que mostra quais alterações serão feitas na infraestrutura. Isso permite visualizar as mudanças antes de aplicá-las.

3. **terraform apply**:
   Aplica as mudanças definidas no código Terraform na infraestrutura real. Isso cria, modifica ou remove recursos de acordo com o plano gerado pelo comando `terraform plan`.

4. **terraform destroy**:
   Destroi todos os recursos gerenciados pelo Terraform no diretório. Este comando é usado para remover completamente os recursos criados anteriormente.

5. **terraform validate**:
   Verifica a sintaxe e a semântica do código Terraform para identificar erros antes da execução.

6. **terraform refresh**:
   Atualiza o estado local do Terraform com o estado atual dos recursos reais na infraestrutura. Isso pode ser útil após fazer alterações fora do Terraform.

7. **terraform output**:
   Exibe os valores de saída definidos no código Terraform. Essas saídas podem ser úteis para obter informações sobre os recursos após a criação.

8. **terraform state**:
   Fornece várias operações para gerenciar o estado do Terraform, como mover, importar ou editar recursos no estado.

9. **terraform import**:
   Importa um recurso existente em um estado Terraform. Isso permite incorporar recursos existentes no gerenciamento do Terraform.

10. **terraform workspace**:
   Permite trabalhar com workspaces (espaços de trabalho) para gerenciar diferentes ambientes ou configurações dentro de um único diretório do Terraform.

11. **terraform fmt**:
   Formata automaticamente o código Terraform para seguir um estilo de formatação consistente.

12. **terraform version**:
   Exibe a versão do Terraform instalada no sistema.

O idela é sempre ler a [Documentação do Terraform](https://www.terraform.io/docs/cli/index.html).
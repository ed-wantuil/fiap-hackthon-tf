# Tech Challenge - IaC

## Visão Geral

Este repositório é dedicado ao armazenamento e gerenciamento do CI/CD para a infraestrutura do Hackthon da Fiap. O

## Recursos AWS Provisionados via Terraform

- **API Gateway:** Serve como o ponto de entrada para as APIs, utilizando o Amazon Cognito para segurança;
- **Cognito:** Gerencia autenticação e autorização de usuários;
- **Lambda:** Lida com a autenticação de usuários e o registro de novas contas;
- **EKS:** Um serviço de registro de Docker que armazena e gerencia suas imagens de container de forma segura;
- **ECR:** Um serviço gerenciado de Kubernetes que facilita a implantação e operação de aplicações em containers;
- **Secret Manager:** Gerencia e protege as credenciais usadas por aplicações e serviços na nuvem;
- **RDS Postgres:**  serviço de banco de dados relacional que fornece instâncias escaláveis de PostgreSQL para armazenar e gerenciar dados;
- **DynamoDB:** Um serviço de banco de dados NoSQL gerenciado que fornece armazenamento rápido e flexível para qualquer escala;

## CI/CD Pipeline

O pipeline de CI/CD é acionado automaticamente após merges na branch principal. As etapas incluem:

- **Setup Terraform:** Configura o ambiente do Terraform, instala a versão correta e prepara as variáveis de ambiente.
- **Terraform Init:** Inicializa o projeto Terraform, configurando o backend e inicializando os módulos e plugins.
- **Terraform Plan:** Cria um plano detalhado das alterações de infraestrutura propostas.
- **Terraform Apply:** Aplica as alterações ao ambiente de destino, atualizando a infraestrutura conforme necessário.

As etapas de CI/CD asseguram que a Infraestrutura como Código (IaC) seja implementada de forma consistente e confiável.

resource "aws_ecr_repository" "techchallenge_repo_pedido" {
  name                 = "agendamento"
  image_tag_mutability = "MUTABLE"
}

resource "aws_ecr_repository" "techchallenge_repo_pagamento" {
  name                 = "agenda"
  image_tag_mutability = "MUTABLE"
}

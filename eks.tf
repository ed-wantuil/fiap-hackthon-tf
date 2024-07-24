resource "aws_eks_cluster" "eks_cluster" {
  name     = var.cluster_name
  version  = var.eks_version
  role_arn = "arn:aws:iam::925263898951:role/LabRole"

  vpc_config {
    subnet_ids         = ["subnet-0c0015624b71338ba", "subnet-054dd9f4139bd359a"]
    security_group_ids = ["sg-04606ec525d0fd346"]
  }
}

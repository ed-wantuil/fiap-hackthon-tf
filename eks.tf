# resource "aws_eks_cluster" "eks_cluster" {
#   name     = var.cluster_name
#   version  = var.eks_version
#   role_arn = "arn:aws:iam::925263898951:role/LabRole"
#
#   vpc_config {
#     subnet_ids         = ["subnet-0c0015624b71338ba", "subnet-02ef8459c2db6d18e"]
#     security_group_ids = ["sg-04606ec525d0fd346"]
#   }
# }
#
# resource "aws_eks_node_group" "eks_node_group" {
#   cluster_name    = aws_eks_cluster.eks_cluster.name
#   node_group_name = "node_eks"
#   node_role_arn   = "arn:aws:iam::925263898951:role/LabRole"
#   subnet_ids      = ["subnet-0c0015624b71338ba", "subnet-02ef8459c2db6d18e"]
#
#   scaling_config {
#     desired_size = 2
#     max_size     = 3
#     min_size     = 1
#   }
#
#   instance_types = ["t3.medium"]
#
#   depends_on = [aws_eks_cluster.eks_cluster]
# }

output "cluster_name" {
  value = aws_eks_cluster.home_task_eks.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.home_task_eks.endpoint
}

output "cluster_ca_certificate" {
  value = aws_eks_cluster.home_task_eks.certificate_authority[0].data
}

output "source_security_group_id" {
  value = aws_security_group.eks_cluster
}

output "project_name" {
  value = aws_eks_cluster.home_task_eks.name
}

output "eks_cluster_role_arn" {
    value = aws_iam_role.eks_cluster.arn
}

output "eks_node_role_arn" {
    value = aws_iam_role.eks_node.arn

}

output "oidc_provider_arn" {
    value = aws_iam_openid_connect_provider.eks.arn  
}

output "alb_controller_role_arn" {
  value = aws_iam_role.alb_controller.arn
}

output "karpenter_role_arn" {
    value = aws_iam_role.karpenter.arn
  
}
output "karpenter_node_role_arn" {
  value = aws_iam_role.karpenter_node.arn
}
output "karpenter_node_role_name" {
    value = aws_iam_role.karpenter_node.name  
}

output "external_dns_role_arn" {
  value = aws_iam_role.external_dns.arn
}

output "github_actions_role_arn" {
  value = aws_iam_role.github_actions.arn
}
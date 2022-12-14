variable "aws_vpc_name" {
  type        = string
  default = "Demo-VPC"
  description = "Name of the VPC"
}

variable "eks_cluster_name" {
  type        = string
  default = "Demo-EKS"
  description = "Name of the EKS Cluster"
}

variable "region" {
  default     = "us-west-2"
  description = "AWS region"
}

terraform {
  backend "s3" {
    bucket = "demo-infra-eks-state-test"
    key    = "infrastructure/terraform.tfstate"
    region = "us-west-2"
  }
}

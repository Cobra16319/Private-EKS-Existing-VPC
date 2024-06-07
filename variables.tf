variable "region" {
  description = "The AWS region to deploy the EKS cluster in."
  type        = string
  default     = "us-gov-east-1"
}

variable "vpc_id" {
  description = "The ID of the existing VPC."
  type        = string
  default     =#Add VPC Name here in ""
}

variable "private_subnet_ids" {
  description = "A list of private subnet IDs within the VPC."
  type        = list(string)
}

variable "cluster_name" {
  description = "The name of the EKS cluster."
  type        = string
  default     = "my-private-eks-cluster"
}

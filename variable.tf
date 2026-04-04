variable "aws_region" {
  description = "AWS region for the EKS cluster"
  type        = string
  default     = "ap-south-1"
}

variable "vpc_id" {
  description = "VPC ID where EKS will be deployed"
  type        = string
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "ankit-cluster"
}

variable "cluster_role_name" {
  description = "IAM role name for the EKS control plane"
  type        = string
  default     = "eks-cluster-example"
}

variable "node_role_name" {
  description = "IAM role name for the EKS worker nodes"
  type        = string
  default     = "eks-node-role"
}

variable "cluster_subnet_ids" {
  description = "Subnet IDs for the EKS control plane"
  type        = list(string)
}

variable "node_subnet_ids" {
  description = "Subnet IDs for the EKS managed node group. Use only subnets with proper outbound connectivity."
  type        = list(string)
}

variable "node_group_name" {
  description = "Managed node group name"
  type        = string
  default     = "pc-node-group-v01"
}

variable "instance_types" {
  description = "EC2 instance types for worker nodes"
  type        = list(string)
  default     = ["t3.small"]
}

variable "capacity_type" {
  description = "ON_DEMAND or SPOT"
  type        = string
  default     = "ON_DEMAND"
}

variable "disk_size" {
  description = "Disk size in GiB for worker nodes"
  type        = number
  default     = 20
}

variable "desired_size" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 3
}

variable "environment" {
  description = "Environment label"
  type        = string
  default     = "dev"
}

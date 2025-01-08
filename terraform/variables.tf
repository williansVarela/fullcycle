variable "prefix" {
  description = "Prefix to be used on all resources as identifier"
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "retenion_in_days" {
  description = "Retention in days for CloudWatch logs"
  type        = number
}

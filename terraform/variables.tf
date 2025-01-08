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

variable "desired_size" {
  description = "Desired number of nodes"
  type        = number
}

variable "max_size" {
  description = "Maximum number of nodes"
  type        = number
}

variable "min_size" {
  description = "Minimum number of nodes"
  type        = number
}

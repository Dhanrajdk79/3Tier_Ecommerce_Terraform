variable "ami_id" {
  description = "AMI for EC2 instances"
  default     = "ami-03bb6d83c60fc5f7c"
}

variable "db_username" {
  description = "RDS master username (override via terraform.tfvars)"
  default     = "admin"
}

variable "db_password" {
  description = "RDS master password (override via terraform.tfvars)"
  type        = string
  sensitive   = true
  default     = "changeme123!"
}

variable "private_subnets" {}

variable "db_username" {
	description = "Master username for the RDS instance"
}

variable "db_password" {
	description = "Master password for the RDS instance (provide via tfvars or secret manager)"
	sensitive   = true
}

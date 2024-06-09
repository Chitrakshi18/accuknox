variable "ami" {
  description = "AMI ID"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.small"
}

variable "subnet_id" {
  description = "The subnet ID to launch the instance in"
}

variable "security_group_id" {
  description = "The security group ID to associate with the instance"
}

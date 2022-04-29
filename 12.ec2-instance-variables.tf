variable "instance_type" {
  description = "EC2 instance type"
  type = string
  default = "t3.micro"
}

variable "private_instance_count" {
  description = "aws ec2 instance private count"
  type = number
  default = 1
}

variable "instance_keypair" {
  description = "instance keypair"
  type = string
  default = "terraform-key"
}
variable "ami" {
  default = "ami-0fc5d935ebf8bc3bc"
}

variable "instance_type" {
  default = "t2.medium"
}

variable "key_name" {
  default = "nv_sshkeys"
}

variable "subnet_id" {
  default = "subnet-0790ca62eccb87948"
}

variable "vpc_security_group_ids" {
  default = "sg-0b619531d4da9d56a"
}

variable "iam_instance_profile" {
  default = "ec2SSMConnect1"
}

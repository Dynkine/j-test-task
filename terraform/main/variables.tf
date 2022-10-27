variable "region" {
  type        = string
  description = "aws region"
  default = "us-east-1"
}

# Put your aws access key in terraform.tfvars file so in won't be seen by git
variable "aws_access_key" {
  type        = string
  description = "aws access key"
}

# Put your aws secret key in terraform.tfvars file so in won't be seen by git
variable "aws_secret_key" {
  type        = string
  description = "aws secret key"
}

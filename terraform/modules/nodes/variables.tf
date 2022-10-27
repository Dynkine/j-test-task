variable "project" {
  description = "Name to be used on all the resources as identifier."
  type = string
}

variable "cluster_name" {
  description = "Name to be used on all the resources as identifier."
  type = string
}

variable "vpc_id" {
  description = "Name to be used on all the resources as identifier."
  type = string
}


variable "source_security_group_id" {
  description = "Name to be used on all the resources as identifier."
  type = string
}

variable "subnet_ids" {
  description = "Name to be used on all the resources as identifier."
  type = list
}

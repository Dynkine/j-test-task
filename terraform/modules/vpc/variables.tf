variable "vpc_cidr" {
  type        = string
  description = "vpc_cidr block"
}

variable "project" {
  description = "Name to be used on all the resources as identifier."
  type = string
}

variable "availability_zones_count" {
  description = "The number of AZs."
  type        = number
  default     = 2
}

variable "subnet_cidr_bits" {
  description = "The number of subnet bits for the CIDR. For example, specifying a value 8 for this parameter will create a CIDR with a mask of /24."
  type        = number
  default     = 8
}

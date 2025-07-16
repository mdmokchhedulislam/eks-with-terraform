variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
  default     = "eks-vpc"
}

variable "public_subnet_cidr_1" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}
variable "public_subnet_cidr_2" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "public_subnet_name" {
  description = "Name tag for public subnet"
  type        = string
  default     = "public_subnet"
}

variable "private_subnet_cidr_1" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "10.0.3.0/24"
}


variable "private_subnet_name" {
  description = "Name tag for private subnet"
  type        = string
  default     = "private_subnet"
}

variable "internet_gateway_name" {
  description = "Name tag for Internet Gateway"
  type        = string
  default     = "internet_gateway"
}

variable "public_route_cidr" {
  description = "CIDR block for internet route"
  type        = string
  default     = "0.0.0.0/0"
}

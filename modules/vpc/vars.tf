variable "ariu_aws_subnet_cidr" {
   type = string
}
variable "ariu_aws_vpc_cidr" {
  type = string
}
variable "ariu_tenancy" {
  default = "default"

}
variable "vpc_id" {}

variable "ariu_aws_availability_zone" {
 
   default = "us-east-2a"
}
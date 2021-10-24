variable "arivu_aws_subnet_cidr" {
   type = string
}
variable "arivu_aws_vpc_cidr" {
  type = string
}
variable "arivu_tenancy" {
  default = "default"

}
variable "arivu_aws_availability_zone" {
 
   default = "us-east-2a"
}
variable "vpc_id" {}
variable "subnet_id" {}



data "aws_availability_zones" "available" {}

resource "aws_vpc" "aws-vpc-ariu" {
    cidr_block = "${var.ariu_aws_vpc_cidr}"
    enable_dns_support = "true" #gives you an internal domain name
    enable_dns_hostnames = "true" #gives you an internal host name
    enable_classiclink = "false"
    instance_tenancy = "${var.ariu_tenancy}"    
    tags = {
        Name = "aws-vpc-ariu"
}
}

resource "aws_subnet" "aws-subnet-public-ariu" {
    vpc_id = "${var.vpc_id}"
    cidr_block = "${var.ariu_aws_subnet_cidr}"
    map_public_ip_on_launch = "true" //it makes this a public subnet
    availability_zones       = ["${data.aws_availability_zones.available.names}"]
    tags = {
        Name = "aws-subnet-public-ariu"
    }
}

output "vpc_id" {
  value = "${aws_vpc.aws-vpc-ariu.id}"
}

output "subnet_id" {
  value = "${aws_subnet.aws-subnet-public-ariu.id}"
}

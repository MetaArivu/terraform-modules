

resource "aws_vpc" "arivu-aws-vpc" {
    cidr_block = "${var.arivu_aws_vpc_cidr}"
    enable_dns_support = "true" #gives you an internal domain name
    enable_dns_hostnames = "true" #gives you an internal host name
    enable_classiclink = "false"
    instance_tenancy = "${var.arivu_tenancy}"    
    tags = {
        Name = "arivu-aws-vpc"
}
}

resource "aws_subnet" "aws-subnet-public-arivu" {
    vpc_id = "${var.vpc_id}"
    cidr_block = "${var.arivu_aws_subnet_cidr}"
    map_public_ip_on_launch = "true" //it makes this a public subnet
    availability_zone = "${var.arivu_aws_availability_zone}"
    tags = {
        Name = "aws-subnet-public-arivu"
    }
}

output "vpc_id" {
  value = "${aws_vpc.arivu-aws-vpc.id}"
}

output "subnet_id" {
  value = "${aws_subnet.aws-subnet-public-arivu.id}"
}

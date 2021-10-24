module "aws-vpc-ariu" {
  source      = "../../modules/vpc"
  //awsvpc_cidr = "192.168.0.0/16"
  ariu_aws_vpc_cidr = var.ariu_aws_vpc_cidr
  vpc_id      = "${module.aws-vpc-ariu.vpc_id}"
  //aws_subnet_cidr = "192.168.1.0/24"
  ariu_aws_subnet_cidr = var.ariu_aws_subnet_cidr
}
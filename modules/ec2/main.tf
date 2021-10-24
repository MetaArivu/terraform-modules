resource "aws_instance" "arivu-aws-ec2" {
  count         = "${var.ec2_count}"
  ami           = "${lookup(var.AMI, var.AWS_REGION)}"
  instance_type = "${var.instance_type}"
  subnet_id     = "${var.ariu_subnet_id}"

  tags = {
    Name = "arivu-aws-ec2"
  }
}

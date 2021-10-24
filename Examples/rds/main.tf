module "ariu_aws_rds" {
  source = "../../modules/rds"
  insname = var.insname
  usr = var.usr
  pass = var.pass
}
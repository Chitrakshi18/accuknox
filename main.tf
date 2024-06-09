module "vpc_us_east_1" {
  source = "./modules/vpc"
  providers = {
    aws = aws.us_east_1
  }
  region = var.region_us_east_1
}

module "vpc_us_east_2" {
  source = "./modules/vpc"
  providers = {
    aws = aws.us_east_2
  }
  region = var.region_us_east_2
}

module "ec2_instance_us_east_1" {
  source = "./modules/ec2_instance"
  providers = {
    aws = aws.us_east_1
  }
  ami                = "ami-04b70fa74e45c3917"
  instance_type      = var.instance_type 
  subnet_id          = module.vpc_us_east_1.subnet_id
  security_group_id  = module.vpc_us_east_1.security_group_id
}

module "ec2_instance_us_east_2" {
  source = "./modules/ec2_instance"
  providers = {
    aws = aws.us_east_2
  }
  ami                = "ami-09040d770ffe2224f" 
  instance_type      = var.instance_type
  subnet_id          = module.vpc_us_east_2.subnet_id
  security_group_id  = module.vpc_us_east_2.security_group_id
}

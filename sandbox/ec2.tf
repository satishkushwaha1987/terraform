module "ec2" {
    source                   = "../modules/ec2"
    testhost_instance_id     = module.ec2.testhost_instance_id
    testhost_ami = var.testhost_ami
    testhost_instance_type = var.testhost_instance_type
    vpc_cidr    =   module.vpc
    vpc_id      =   module.vpc.vpc_id
    public_subnet_ids   = module.vpc.public_subnet_ids
    environmnet = var.environment
    company_name    = var.company_name
    key_name = var.key_name
}
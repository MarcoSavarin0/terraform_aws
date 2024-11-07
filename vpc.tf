module "vpc" {
  source                  = "terraform-aws-modules/vpc/aws"
  version                 = "5.5.3"
  name                    = "vpc-Marco-tf"
  cidr                    = "10.10.0.0/16"
  azs                     = ["us-east-1a", "us-east-1b"]
  public_subnets          = ["10.10.1.0/24", "10.10.2.0/24"]
  private_subnets         = ["10.10.3.0/24", "10.10.4.0/24"]
  enable_nat_gateway      = true 
  map_public_ip_on_launch = true 
}

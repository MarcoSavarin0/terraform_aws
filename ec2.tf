
resource "aws_instance" "testing" {
  ami               = "ami-0866a3c8686eaeeba"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
  key_name          = "terraform"
  subnet_id         = module.vpc.private_subnets[0]
  depends_on        = [module.vpc]
}
resource "aws_instance" "produccion" {
  ami               = "ami-0866a3c8686eaeeba"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1b"
  key_name          = "terraform"
  subnet_id         = module.vpc.public_subnets[1]
  depends_on        = [module.vpc]
  associate_public_ip_address = true
}

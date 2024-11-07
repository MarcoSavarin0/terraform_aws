resource "aws_instance" "testing" {
  ami               = "ami-0866a3c8686eaeeba"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
  key_name          = "terraform"
  subnet_id         = "subnet-0f8e6f79d6b379e15"
}
resource "aws_instance" "produccion" {
  ami               = "ami-0866a3c8686eaeeba"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1b"
  key_name          = "terraform"
  subnet_id         = "subnet-00500a62d6e43c189"
}

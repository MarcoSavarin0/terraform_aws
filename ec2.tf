
resource "aws_instance" "web-server" {
  ami                         = "ami-01cc34ab2709337aa"
  instance_type               = "t2.micro"
  availability_zone           = "us-east-1b"
  count                       = 2
  key_name                    = "terraform"
  subnet_id                   = module.vpc.public_subnets[1]
  depends_on                  = [module.vpc]
  security_groups             = [aws_security_group.web-server.id]
  associate_public_ip_address = true
  user_data                   = <<-EOF
       #!/bin/bash
       sudo su
        yum update -y
        yum install httpd -y
        systemctl start httpd
        systemctl enable httpd
        echo "<html><h1> Hola estos desde la ip $(hostname -f)...</p> </h1></html>" >> /var/www/html/index.html
    EOF
}

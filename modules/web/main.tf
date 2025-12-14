resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  subnet_id     = var.subnet_id
  security_groups = [var.web_sg]
  user_data     = file("${path.root}/user-data/web.sh")

  tags = {
    Name = "Web-Server"
  }
}

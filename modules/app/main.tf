resource "aws_instance" "app" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  subnet_id     = var.subnet_id
  user_data     = file("${path.root}/user-data/app.sh")

  tags = {
    Name = "App-Server"
  }
}

resource "aws_ebs_volume" "web_server" {
  availability_zone = var.availability_zone
  size              = var.size

  tags = {
    Name        = var.name
    Description = "Data volume for web server"
  }
}

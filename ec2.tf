resource "aws_instance" "my_ec2_instance" {
  ami             = "ami-0a91cd140a1fc148a"
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.lab_public.id
  security_groups = [aws_security_group.lab_security_group.id]
  key_name        = "terraform"
  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("terraform.pem")
  }
  provisioner "remote-exec" {
    inline = [
      "sudo install https"
    ]
  }

}
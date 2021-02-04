resource "aws_instance" "firstdemo" {

ami = "ami-922914f7"

instance_type = "t2.micro"

provisioner "local-exec" {

command = "echo ${aws_instance.firstdemo.private_ip} >> private_ips.txt"

}

tags {

Name = "threedemoinstance"

}

}

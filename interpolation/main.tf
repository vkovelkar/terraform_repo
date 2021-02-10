data "aws_ami" "ubuntu" {
most_recent = true
filter {
name = "name"
values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
}
filter {
name = "virtualization-type"
values = ["hvm"]
}
owners = ["123456678"] # conical
}
resource "aws_instance" "web" {
ami = "${data.aws.ami.ubuntu.id}"
instance_type = "${var.env == "production" ? var.large : var.small}"  # Condition for small or medium 
}

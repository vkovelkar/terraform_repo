data "aws_ami" "ubuntu"{
  most_recent = "true"
 owners = ["187529137862"]
  filter  {
  name = "name"
  values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
  }
 filter {
  name = "virtualization-type"
  values = ["hvm"]
 }
}
output "aws_ami"{
  value = "${data.aws_ami.ubuntu.id}"
}

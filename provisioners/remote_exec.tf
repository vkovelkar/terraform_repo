resource "aws_instance" "firstdemo" {

ami = "ami-922914f7"

instance_type = "t2.micro"

key_name = "testaccess"

provisioner "remote-exec" {

inline = [

"sudo yum -y install http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm",

]

connection {

type = "ssh"

user = "ec2-user"

private_key = "${file("/tmp/testaccess.pem")}"

}

}

}

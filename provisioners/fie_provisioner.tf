resource "null_resource" "cluster" {

provisioner "file" {

source = "/tmp/createtime.log"

destination = "/tmp/createtime.log"

connection {

type = "ssh"

host = "18.191.227.101"

user = "ubuntu"

private_key = "${file("/tmp/testaccess.pem")}"

}

}

}

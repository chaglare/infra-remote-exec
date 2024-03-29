resource "aws_instance" "example" {
    ami = "${var.ami}"
    instance_type = "${var.instance_type}"
    key_name =  "${var.key_name}"           #Be aware of key, it comes from jenkins folder
    associate_public_ip_address = true
    security_groups = ["${aws_security_group.example.name}"]

    provisioner "remote-exec" {
        connection {
            host = "${self.public_ip}"
            type = "ssh"
            user  = "${var.user}"
            private_key = "${file("~/.ssh/id_rsa")}"
        }
        inline  = [
            "sudo yum install telnet -y"
        ]
    }
}

output "pub_sec_group" {
  value = "${aws_security_group.jenkins.name}"
}

output "key_name" {
  value = "${aws_key_pair.developer_key.id}"
}
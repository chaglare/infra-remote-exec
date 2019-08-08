output "key_name" {
  value = "${aws_key_pair.developer_key.id}"
}

output "Domain" {
    value = "${var.record}.${var.domain}"
}
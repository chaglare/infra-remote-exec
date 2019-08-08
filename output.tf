output "key_name" {
  value = "${aws_key_pair.developer_key.id}"
}

output "Link" {
    value = "http://${var.record}.${var.domain}:8080"
}
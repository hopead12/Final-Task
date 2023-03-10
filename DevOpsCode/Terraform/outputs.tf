
output "Webserver_public_dns" {
  value = aws_elb.web.dns_name
}
output "DBserver_public_ip_address" {
  value = aws_db_instance.db.endpoint
}

output "webserver_sg_id_web" {
  value = aws_security_group.web.id
}

output "webserver_sg_id_db" {
  value = aws_security_group.db.id
}


output "private_key_web" {
  value     = tls_private_key.web.private_key_pem
  sensitive = true
}

output "key_name_web" {
  value     = aws_key_pair.generated_key_web.key_name
  
}
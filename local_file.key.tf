resource "local_file" "privatekey" {
  content  = tls_private_key.ecs.private_key_pem
  filename = "${path.module}/id_rsa"
}

resource "local_file" "publickey" {
  content  = tls_private_key.ecs.public_key_openssh
  filename = "${path.module}/id_rsa.pub"
}

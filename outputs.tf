output "${aws_instance.docker-host.name} public_ip" {
    value = "${aws_instance.docker-host.public_ip}"}

output "${aws_instance.docker-host.name} private_ip" {
	value = "${aws_instance.docker-host.private_ip}"}

output "${aws_instance.docker-host.name} public_dns" {
  	value = "${aws_instance.docker-host.public_dns}"}

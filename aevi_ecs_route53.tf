#to get zone id
#aws route53 list-hosted-zones

resource "aws_route53_record" "dms" {
   zone_id = "${var.zone_id}"
   name = "dms.${lookup(var.dnsname, var.environment)}"
   type = "CNAME"
   ttl = "300"
   records = ["${aws_instance.docker-host.public_dns}"]
}

resource "aws_route53_record" "admin" {
   zone_id = "${var.zone_id}"
   name = "admin.${lookup(var.dnsname, var.environment)}"
   type = "CNAME"
   ttl = "300"
   records = ["${aws_instance.docker-host.public_dns}"]
}

/*"appstore.${var.environment}.${var.domain}"*/
resource "aws_route53_record" "appstore" {
   zone_id = "${var.zone_id}"
   name = "appstore.${lookup(var.dnsname, var.environment)}"
   type = "CNAME"
   ttl = "300"
   records = ["${aws_instance.docker-host.public_dns}"]
}

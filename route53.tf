data "aws_route53_zone" "selected" {
  name = "${var.domain_name}."
}

resource "aws_route53_record" "server1-record" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = var.sub_domain_name 
  type    = "A"
  ttl     = "300"
  records = [aws_instance.vpnserver.public_ip]
}

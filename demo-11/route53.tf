resource "aws_route53_zone" "newtech-academy" {
  name = "aronshark.net"
}

resource "aws_route53_record" "server1-record" {
  zone_id = aws_route53_zone.newtech-academy.zone_id
  name    = "server1.aronshark.net"
  type    = "A"
  ttl     = "300"
  records = ["15.164.52.129"]
}

resource "aws_route53_record" "www-record" {
  zone_id = aws_route53_zone.newtech-academy.zone_id
  name    = "www.aronshark.net"
  type    = "A"
  ttl     = "300"
  records = ["15.164.52.129"]
}

resource "aws_route53_record" "mail1-record" {
  zone_id = aws_route53_zone.newtech-academy.zone_id
  name    = "aronshark.net"
  type    = "MX"
  ttl     = "300"
  records = [
    "1 aspmx.l.google.com.",
    "5 alt1.aspmx.l.google.com.",
    "5 alt2.aspmx.l.google.com.",
    "10 aspmx2.googlemail.com.",
    "10 aspmx3.googlemail.com.",
  ]
}

output "ns-servers" {
  value = aws_route53_zone.newtech-academy.name_servers
}


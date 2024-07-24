resource "aws_route53_record" "alb_a_record" {
  zone_id = {your route53 zone_id}
  name    = "awscloudschool.online"
  type    = "A"

  alias {
    name                   = data.external.ingress_address.result.address
    zone_id                = {your route53 zone_id}
    evaluate_target_health = true
  }

  depends_on = [kubectl_manifest.istio_ingress_alb]
}


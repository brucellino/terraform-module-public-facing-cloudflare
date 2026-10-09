data "cloudflare_zone" "selected" {
  filter = {
    name  = "name"
    equal = var.registered_domain
  }
}

resource "cloudflare_dns_record" "external" {
  for_each = var.service_records
  zone_id  = data.cloudflare_zone.selected.id
  name     = each.key
  content  = each.value.value
  type     = each.value.type
  ttl      = each.value.ttl
}

data "cloudflare_zone" "selected" {
  name = var.registered_domain
}

resource "cloudflare_record" "external" {
  for_each = var.service_records
  zone_id  = data.cloudflare_zone.selected.id
  name     = each.key
  value    = each.value.value
  type     = each.value.type
  ttl      = each.value.ttl
}

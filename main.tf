resource "cloudflare_zone_subscription" "zone_subscriptions" {
  for_each = var.zone_subscriptions

  zone_id   = each.value.zone_id
  frequency = each.value.frequency
  rate_plan = each.value.rate_plan
}


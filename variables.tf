variable "zone_subscriptions" {
  description = <<EOT
Map of zone_subscriptions, attributes below
Required:
    - zone_id
Optional:
    - frequency
    - rate_plan
EOT

  type = map(object({
    zone_id   = string
    frequency = optional(string)
    rate_plan = optional(object({
      id    = optional(string)
      scope = optional(string)
    }))
  }))
}


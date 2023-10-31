module "labels" {
  source      = "git::https://github.com/opz0/terraform-digitalocean-labels.git?ref=v1.0.0"
  name        = var.name
  environment = var.environment
  managedby   = var.managedby
  label_order = var.label_order
}

resource "digitalocean_vpc" "default" {
  count = var.enabled == true ? 1 : 0

  name        = format("%s-vpc", module.labels.id)
  region      = var.region
  description = var.description
  ip_range    = var.ip_range
}
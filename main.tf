module "labels" {
  source      = "cypik/labels/digitalocean"
  version     = "1.0.2"
  name        = var.name
  environment = var.environment
  managedby   = var.managedby
  label_order = var.label_order
}

resource "digitalocean_vpc" "default" {
  count       = var.enabled == true ? 1 : 0
  name        = format("%s-vpc-2", module.labels.id)
  region      = var.region
  description = var.description
  ip_range    = var.ip_range
}
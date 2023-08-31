#Module      : LABEL
module "labels" {
  source      = "git::git@github.com:opz0/terraform-digitalocean-labels.git?ref=master"
  name        = var.name
  environment = var.environment
  managedby   = var.managedby
  label_order = var.label_order
}

#Description : VPCs are virtual networks containing resources that can communicate with each other in full isolation, using private IP addresses.
resource "digitalocean_vpc" "default" {
  count = var.enabled == true ? 1 : 0

  name        = format("%s-vpc", module.labels.id)
  region      = var.region
  description = var.description
  ip_range    = var.ip_range
}
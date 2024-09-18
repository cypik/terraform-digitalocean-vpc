provider "digitalocean" {}

module "vpc" {
  source      = "./../"
  name        = "app1"
  environment = "test"
  region      = "blr1"
  ip_range    = "10.11.0.0/16"
}

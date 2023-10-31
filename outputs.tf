output "id" {
  value       = join("", digitalocean_vpc.default[*].id)
  description = "The unique identifier for the VPC.."
}

output "urn" {
  value       = join("", digitalocean_vpc.default[*].urn)
  description = "The uniform resource name (URN) for the VPC."
}

output "default" {
  value       = join("", digitalocean_vpc.default[*].default)
  description = "A boolean indicating whether or not the VPC is the default one for the region."
}

output "created_at" {
  value       = join("", digitalocean_vpc.default[*].created_at)
  description = "The date and time of when the VPC was created."
}
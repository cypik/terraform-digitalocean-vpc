variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "label_order" {
  type        = list(any)
  default     = ["name", "environment"]
  description = "Label order, e.g. `cypik`."
}

variable "managedby" {
  type        = string
  default     = "cypik"
  description = "ManagedBy, eg 'cypik'"
}

variable "enabled" {
  type        = bool
  default     = true
  description = "A boolean flag to enable/disable vpc."
}

variable "region" {
  type        = string
  default     = "blr1"
  description = "The region to create VPC, like ``blr1``"
}

variable "description" {
  type        = string
  default     = "VPC"
  description = "A free-form text field up to a limit of 255 characters to describe the VPC."
}

variable "ip_range" {
  type        = string
  default     = ""
  description = "The range of IP addresses for the VPC in CIDR notation. Network ranges cannot overlap with other networks in the same account and must be in range of private addresses as defined in RFC1918. It may not be larger than /16 or smaller than /24."
}

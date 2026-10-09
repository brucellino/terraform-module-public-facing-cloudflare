# variables.tf
variable "registered_domain" {
  type        = string
  description = "A domain registered with Cloudflare that you own. This will be used for subsequent operations"
}

variable "service_records" {
  type        = map(map(string))
  description = "List of maps of record names and types which we want to create"
}

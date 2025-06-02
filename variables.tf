/*
service principle credentials shouldnt be defined here
with sensitive as true if we are defining these sensitive variables
in azure devops pipeline or any other cicd pipelines as environment
variables else it wont work.
that is the reason why i have commented out here..
and reference variables in providers.tf file

*/


variable "name" {
  type = string
  description = "resource group name"
}

variable "location" {
  type = string
  description = "resource group location"
}

# variable "subscription_id" {
#   type = string
#   sensitive = true
# }

# variable "client_id" {
#   type = string
#   sensitive = true
# }

# variable "client_secret" {
#   type = string
#   sensitive = true
# }

# variable "tenant_id" {
#   type = string
#   sensitive = true
# }
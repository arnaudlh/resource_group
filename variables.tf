variable "resource_groups" {
  description = "(Required) Map of the resource groups to create"
  type        = map(string)
}

# Example of resource_groups data structure:
# myrg = {
#     rg1     = "-production"
#     rg2     = "-qa"
#     rg3     = "-dev"
# }

variable "location" {
  description = "(Required) Define the region where the resource groups will be created"
}

variable "prefix" {
  description = "(Optional) You can use a prefix to add to the list of resource groups you want to create"
}

variable "tags" {
  description = "tags for the deployment"
}

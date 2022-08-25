variable "resource_group_name" {
  type        = string
  description = "Resource group where the cluster has been provisioned."
}

variable "resource_location" {
  type        = string
  description = "Geographic location of the resource (e.g. us-south, us-east)"
}

variable "tags" {
  type        = list(string)
  description = "Tags that should be applied to the service"
  default     = []
}

variable "name_prefix" {
  type        = string
  description = "The prefix name for the service. If not provided it will default to the resource group name"
  default     = ""
}

variable "plan" {
  type        = string
  description = "The type of plan the service instance should run under (lite, professional-v1)"
  default     = "professional-v1"
}

variable "name" {
  type        = string
  description = "The name of the Watson Studio instance that will be provisioned"
  default     = ""
}

variable "label" {
  type        = string
  description = "The label of the resource used to build the name along with the name_prefix."
  default     = "studio"
}

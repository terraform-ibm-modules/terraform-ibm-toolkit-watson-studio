output "id" {
  description = "The id of the provisioned redis instance"
  value       = ibm_resource_instance.studio_instance.id
}

output "name" {
  description = "The name of the provisioned redis instance"
  value       = local.name
  depends_on  = [ibm_resource_instance.studio_instance]
}

output "crn" {
  description = "The id of the provisioned redis instance"
  value       = ibm_resource_instance.studio_instance.id
}

output "location" {
  description = "The location of the provisioned redis instance"
  value       = var.resource_location
  depends_on  = [ibm_resource_instance.studio_instance]
}

output "service" {
  description = "The name of the key provisioned for the redis instance"
  value       = local.service
  depends_on = [ibm_resource_instance.studio_instance]
}

output "label" {
  description = "The label for the redis instance"
  value       = var.label
  depends_on = [ibm_resource_instance.studio_instance]
}

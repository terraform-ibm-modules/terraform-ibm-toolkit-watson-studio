module "dev_watson_studio" {
  source = "./module"

  resource_group_name      = module.resource_group.name
  resource_location        = var.region
  name_prefix              = var.name_prefix
}

# Watson Studio terraform module

Provisions an instance of Watson Studio in an IBM Cloud account.

## Example usage

```terraform-hcl
module "watsonstudio" {
  source = "github.com/ibm-garage-cloud/terraform-service-watsonstudio"

  resource_group_name      = module.resource_group.name
  resource_location        = var.region
  name_prefix              = var.name_prefix
}
```

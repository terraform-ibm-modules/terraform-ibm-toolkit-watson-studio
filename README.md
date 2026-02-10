# Watson Studio terraform module

:warning: This module is no longer maintained. Please use [terraform-ibm-watsonx-ai](https://github.com/terraform-ibm-modules/terraform-ibm-watsonx-ai) for configuring watsonx.ai on IBM Cloud.

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

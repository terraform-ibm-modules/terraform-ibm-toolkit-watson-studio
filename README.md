# Watson Studio terraform module

Provisions an instance of Watson Studio in an IBM Cloud account.

## Example usage

```terraform-hcl
module "watsonstudio" {
  source = "github.com/ibm-garage-cloud/terraform-service-watsonstudio"

  resource_group_name = module.dev_cluster.resource_group_name
  resource_location   = module.dev_cluster.region
  cluster_id          = module.dev_cluster.id
  namespaces          = []
  namespace_count     = 0
  name_prefix         = var.name_prefix
  tags                = []
  plan                = "standard-v1"
}
```

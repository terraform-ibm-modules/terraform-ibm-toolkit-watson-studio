provider "ibm" {
  version = ">= 1.2.1"
}

resource null_resource print_values {
  provisioner "local-exec" {
    command = "echo '${var.resource_group_name}'"
  }
}

data "ibm_resource_group" "tools_resource_group" {
  depends_on = [null_resource.print_values]

  name = var.resource_group_name
}

locals {
  role            = "Manager"
  name_prefix     = var.name_prefix != "" ? var.name_prefix : var.resource_group_name
  region_map      = {
    us-east  = "us-south"
    us-south = "us-south"
    au-syd   = "jp-tok"
    in-che   = "jp-tok"
    jp-osa   = "jp-tok"
    jp-tok   = "jp-tok"
    kr-seo   = "jp-tok"
    eu-de    = "eu-de"
    eu-gb    = "eu-gb"
  }
  region          = local.region_map[var.resource_location]
  name            = lower(replace(var.name != "" ? var.name : "${local.name_prefix}-${var.label}", "/[^a-zA-Z0-9_\\-\\.]/", ""))
  service         = "data-science-experience"
}

resource ibm_resource_instance studio_instance {
  name              = local.name
  service           = local.service
  plan              = var.plan
  location          = local.region
  resource_group_id = data.ibm_resource_group.tools_resource_group.id
  tags              = var.tags

  timeouts {
    create = "15m"
    update = "15m"
    delete = "15m"
  }
}

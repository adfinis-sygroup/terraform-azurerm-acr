[Terraform](https://www.terraform.io/) module to manage [Azure Container Registries](https://azure.microsoft.com/en-us/services/container-registry/)
using the [`azurerm_container_registry`](https://www.terraform.io/docs/providers/azurerm/r/container_registry.html)
resource from the [Azure Provider](https://www.terraform.io/docs/providers/azurerm/index.html).

## Usage

```
module "acr" {
  source  = "adfinis-sygroup/acr/azurerm"
  version = "0.0.0"
}
```

Please have a look at [variables.tf](./variables.tf) to see available options.

## Examples

There are some examples how to use the module in the [examples subdirectory](./examples).
You may choose to deploy either a Basic registry or a Premium registry with
basic georeplication support.

To run them you can just call init, plan and, apply with the path to the
example directory.

```
terraform init  examples/plain-acr/
terraform plan  examples/plain-acr/
terraform apply examples/plain-acr/
```

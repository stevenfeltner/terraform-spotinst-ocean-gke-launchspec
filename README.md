# terraform-spotinst-ocean-gke-launchspec
Terraform module for Spotinst provider resource spotinst_ocean_gke_launch_spec

## Prerequisites

Installation of the Ocean cluster is required by this resource. You can accomplish this by using the [spotinst/resources/ocean_gke_import](https://registry.terraform.io/providers/spotinst/spotinst/latest/docs/resources/ocean_gke_import) or use [ocean-gke-import](https://registry.terraform.io/modules/stevenfeltner/ocean-gke-import/spotinst/latest) module as follows:

```hcl
module "ocean-gke-import" {
  source  = "stevenfeltner/ocean-gke-import/spotinst"
  ...
}


```


## Usage
```hcl
module "ocean-gke-launchspec" {
  source = "stevenfeltner/ocean-gke-launchspec/spotinst"

  cluster_name        = "gke-sales"
  node_pool_name      = "pool-1"
  ocean_id            = "o-1234567"
}
```

## Providers

| Name | Version |
|------|---------|
| spotinst/spotinst | >= 1.30.0 |
| hashicorp/gcp |  |

## Modules
* `ocean-gke-import` - Creates Ocean Cluster [Doc](https://registry.terraform.io/modules/stevenfeltner/ocean-gke-import/spotinst/latest)
* `ocean-controller` - Create and installs Spot Ocean controller pod [Doc](https://registry.terraform.io/modules/spotinst/ocean-controller/spotinst/latest)
* `ocean-gke-launchspec` - (Optional) Add custom virtual node groups with custom configs

## Documentation

If you're new to [Spot](https://spot.io/) and want to get started, please checkout our [Getting Started](https://docs.spot.io/connect-your-cloud-provider/) guide, available on the [Spot Documentation](https://docs.spot.io/) website.

## Getting Help

We use GitHub issues for tracking bugs and feature requests. Please use these community resources for getting help:

- Ask a question on [Stack Overflow](https://stackoverflow.com/) and tag it with [terraform-spotinst](https://stackoverflow.com/questions/tagged/terraform-spotinst/).
- Join our [Spot](https://spot.io/) community on [Slack](http://slack.spot.io/).
- Open an issue.

## Community

- [Slack](http://slack.spot.io/)
- [Twitter](https://twitter.com/spot_hq/)

## Contributing

Please see the [contribution guidelines](CONTRIBUTING.md).
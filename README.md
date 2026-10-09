[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit) [![pre-commit.ci status](https://results.pre-commit.ci/badge/github/brucellino/tfmod-template/main.svg)](https://results.pre-commit.ci/latest/github/brucellino/tfmod-template/main) [![semantic-release: conventional](https://img.shields.io/badge/semantic--release-conventional-e10079?logo=semantic-release)](https://github.com/semantic-release/semantic-release)

# Terraform for public-facing cloudflare records

This provisions cloudflare records for publicly-facing services in the cluster.

## Pre-commit hooks

<!-- Edit this section or delete if you make no change  -->

The [pre-commit](https://pre-commit.com) framework is used to manage pre-commit hooks for this repository.
A few well-known hooks are provided to cover correctness, security and safety in terraform.

Prek is used to manage the hooks.

## Examples

The `examples/` directory contains the example usage of this module.
These examples show how to use the module in your project, and are also use for testing in CI/CD.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >1.2.0 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | 3.20.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 3.20.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_record.external](https://registry.terraform.io/providers/cloudflare/cloudflare/3.20.0/docs/resources/record) | resource |
| [cloudflare_zone.selected](https://registry.terraform.io/providers/cloudflare/cloudflare/3.20.0/docs/data-sources/zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_registered_domain"></a> [registered\_domain](#input\_registered\_domain) | A domain registered with Cloudflare that you own. This will be used for subsequent operations | `string` | n/a | yes |
| <a name="input_service_records"></a> [service\_records](#input\_service\_records) | List of maps of record names and types which we want to create | `map(map(string))` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

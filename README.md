# terraform-aws-ecs

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-ecs/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-ecs)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-ecs.svg)](https://github.com/JamesWoolfenden/terraform-aws-ecs/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-ecs.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-ecs/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-ecs/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-ecs&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-ecs/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-ecs&benchmark=INFRASTRUCTURE+SECURITY)

Old Working model for using AWS ECS via Terraform

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |
| local | n/a |
| tls | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| allowed\_range | IP ranges allowed to connect | `list(any)` | n/a | yes |
| common\_tags | n/a | `map` | <pre>{<br>  "Name": "terraform-ecs"<br>}</pre> | no |
| docker-email | description | `string` | `"description"` | no |
| docker-pass | n/a | `any` | n/a | yes |
| docker-user | n/a | `string` | `"admin"` | no |
| instance\_type | Size of host instance | `string` | `"t3.micro"` | no |
| name | (optional) describe your variable | `string` | `"terraform-ecs"` | no |
| region | n/a | `string` | `"eu-west-1"` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-codebuild](https://github.com/jameswoolfenden/terraform-aws-codebuild) - Making a Build pipeline

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150

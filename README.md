# terraform-aws-ecs

[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

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
| allowed\_range | IP ranges allowed to connect | `list` | <pre>[<br>  "0.0.0.0/0"<br>]</pre> | no |
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

# terraform-aws-ecs

[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![pre-commit](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

Working model for using AWS ECS via Terraform

Needs some work now to make it usable again.
Never a good idea to look at old code.
I guess it means i'm learning.
Thankfully I would do it much different from how this started.
Don't pass your docker pass words like this example.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| aws | 2.42 |
| local | ~> 1.4 |
| tls | ~> 2.1 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| allowed\_range | IP ranges allowed to connect | `list` | <pre>[<br>  "0.0.0.0/0"<br>]</pre> | no |
| common\_tags | n/a | `map` | <pre>{<br>  "Name": "terraform-ecs"<br>}</pre> | no |
| docker-email | description | `string` | `"description"` | no |
| docker-pass | n/a | `any` | n/a | yes |
| docker-user | n/a | `any` | n/a | yes |
| instance\_type | n/a | `any` | n/a | yes |
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

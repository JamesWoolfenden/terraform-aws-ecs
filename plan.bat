set ENVIRONMENT=%1
Terraform plan -state=.\state\Terraform-%ENVIRONMENT%.tfstate -var environment=%ENVIRONMENT%

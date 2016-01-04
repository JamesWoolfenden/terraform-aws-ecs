set ENVIRONMENT=%1
Terraform apply -state=.\state\Terraform-%ENVIRONMENT%.tfstate -var environment=%ENVIRONMENT% 

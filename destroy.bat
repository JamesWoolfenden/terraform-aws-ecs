set ENVIRONMENT=%1
Terraform destroy -force -state=.\state\Terraform-%ENVIRONMENT%.tfstate -var environment=%ENVIRONMENT% 

set ENVIRONMENT=%1
set MODULE=%2
Terraform taint -state=.\state\Terraform-%ENVIRONMENT%.tfstate %MODULE%

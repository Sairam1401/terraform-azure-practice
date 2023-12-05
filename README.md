# terraform-azure-practice

### each file has comments on top to denote what is the functionality
###  module\terraform-azure-custom-role-definition - create custom role definition with terraform module

### To login to azure
az login
az account show -o table
az account set -s "name/subscription"

### To execute can use following commands:

1. terraform fmt - formats the code and files to terraform standards.
2. terraform init - initializes the modules as per terraform configurations we have in current project. anytime file changes are made better to execute this command.
3. terraform validate - To ensure if the terraform configuration is valid.
4. terraform plan -out "createcustomrole.tfplan" - To confirm if the expected changes are reflecting as no of resources to be added, updated or deleted before deploying. out switch is optional but better to use always. 
5. terraform apply "createcustomrole.tfplan" - To deploy the planned configuration related resources to azure or aws platforms.
6. [IMPORTANT] terraform destroy - If need to clean up deployed resources. you will be prompted to type in "yes" to continue

# Note: Scopes or assignable scopes, if need to be dynamic can be updated to json and code following same coding pattern we used here.

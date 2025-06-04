# terraform-k8s-infra
Terraform-Based Kubernetes Deployment with Let's Encrypt, Managed Postgres, and Ingress

## Deployment Steps

1. Connect to the Azure VM. Use SSH to access the VM where Terraform will run: 

        ssh <your-username>@<vm-public-ip>

2. Ensure all pre-requisites like Azure CLI and Terraform are installed.

3. Authenticate to Azure: 

        az login
        az account set --subscription "<your-subscription-id>"

4. Clone This Repository:

        git clone https://github.com/DevanshiPingolia/terraform-k8s-infra.git
        cd terraform-k8s-infra

5. Prepare the Variables File. Fill in the actual values in terraform.tfvars file.

6. Initialize Terraform: 

        terraform init

7. Apply Modules in Order. Apply Terraform modules step by step to maintain resource dependencies:

        terraform apply -target=module.network -var-file="terraform.tfvars"
        terraform apply -target=module.eks_or_aks -var-file="terraform.tfvars"
        terraform apply -target=module.rds_or_azure_postgres -var-file="terraform.tfvars"
        terraform apply -target=module.ingress -var-file="terraform.tfvars"
        terraform apply -target=module.cert_manager -var-file="terraform.tfvars"
        terraform apply -target=module.dns -var-file="terraform.tfvars"
        terraform apply -target=module.app -var-file="terraform.tfvars"

8. Connect to the AKS Cluster:

        az aks get-credentials --resource-group <your-resource-group> --name <your-aks-name>

9. Verify Deployments:

        kubectl get nodes
        kubectl get pods -A
        kubectl get svc -A
        kubectl get ingress -A
        helm list -A

10. To Destroy the Infrastructure:

        terraform destroy -var-file="terraform.tfvars"

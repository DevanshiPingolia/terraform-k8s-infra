resource_group_name = "demo-rg"
location            = "eastus"
name_prefix         = "demo"

vnet_cidr            = "10.0.0.0/16"
public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.10.0/24", "10.0.11.0/24"]
availability_zones   = ["1", "2"]

node_count   = 2
node_vm_size = "Standard_DS2_v2"

db_admin_username    = "dbadmin"
db_admin_password    = "ChangeThisP@ssw0rd"
sku_name             = "GP_Standard_D2s_v3"
storage_mb           = 32768
availability_zone    = "1"

private_dns_zone_id  = "<dns zone resource ID>"
subnet_id            = "<private subnet ID>"

domain_name    = "yourdomain.com"
public_ip      = "<public LB IP>"
private_ip     = "<private LB IP>"
public_record_name  = "app"
private_record_name = "app-internal"

namespace      = "glance"
app_name       = "glance"
image          = "ghcr.io/glanceapp/glance:latest"
replicas       = 1
container_port = 8080
service_port   = 80

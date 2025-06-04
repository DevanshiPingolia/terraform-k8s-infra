resource_group_name = "demo-rg"
location            = "eastus"
name_prefix         = "demo"

vnet_cidr            = "10.0.0.0/16"
public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.10.0/24", "10.0.11.0/24"]
availability_zones   = ["1", "2"]

node_count   = 2
node_vm_size = "Standard_DS2_v2"

admin_username       = "dbadmin"
admin_password       = "ChangeThisP@ssw0rd"
sku_name             = "GP_Standard_D2s_v3"
storage_mb           = 32768
zone                 = "1"

private_dns_zone_id  = "<dns zone resource ID>"
subnet_id            = "<private subnet ID>"

app_domain     = "app.example.com"
ingress_class  = "public"
domain_name    = "example.com"
public_ip      = "<public lb IP>"
private_ip     = "<private lb IP>"
public_record_name  = "app"
private_record_name = "app-internal"
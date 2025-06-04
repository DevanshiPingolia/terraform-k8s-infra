variable "ingress_class" {
  type        = string
  description = "Ingress class name (e.g., public or private)"
}

variable "app_domain" {
  type        = string
  description = "DNS hostname for the application"
}
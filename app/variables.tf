variable "namespace" {
  type    = string
  default = "glance"
}

variable "app_name" {
  type    = string
  default = "glance"
}

variable "image" {
  type    = string
  default = "ghcr.io/glanceapp/glance:latest" # giving an example image name here
}

variable "replicas" {
  type    = number
  default = 1
}

variable "container_port" {
  type    = number
  default = 8080
}

variable "service_port" {
  type    = number
  default = 80
}

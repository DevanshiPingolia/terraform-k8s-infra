resource "helm_release" "glance" {
  name       = "glance"
  repository = "https://glance.jhnsh.dev"
  chart      = "glance"
  namespace  = "glance"
  create_namespace = true
  version    = "0.1.0" # Check for latest version

  set {
    name  = "ingress.enabled"
    value = true
  }

  set {
    name  = "ingress.className"
    value = var.ingress_class
  }

  set {
    name  = "ingress.hosts[0].host"
    value = var.app_domain
  }

  set {
    name  = "ingress.hosts[0].paths[0].path"
    value = "/"
  }

  set {
    name  = "ingress.hosts[0].paths[0].pathType"
    value = "Prefix"
  }
}
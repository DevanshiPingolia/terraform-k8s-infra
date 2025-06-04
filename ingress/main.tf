resource "helm_release" "nginx_ingress_public" {
  name       = "nginx-ingress-public"
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"
  namespace  = "ingress-public"
  create_namespace = true

  set {
    name  = "controller.ingressClassResource.name"
    value = "public"
  }

  set {
    name  = "controller.service.annotations.service\.beta\.kubernetes\.io/azure-load-balancer-internal"
    value = "false"
  }
}

resource "helm_release" "nginx_ingress_private" {
  name       = "nginx-ingress-private"
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"
  namespace  = "ingress-private"
  create_namespace = true

  set {
    name  = "controller.ingressClassResource.name"
    value = "private"
  }

  set {
    name  = "controller.service.annotations.service\.beta\.kubernetes\.io/azure-load-balancer-internal"
    value = "true"
  }
}
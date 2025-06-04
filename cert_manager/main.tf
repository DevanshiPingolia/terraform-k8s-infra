resource "helm_release" "cert_manager" {
  name             = "cert-manager"
  repository       = "https://charts.jetstack.io"
  chart            = "cert-manager"
  namespace        = "cert-manager"
  create_namespace = true

  set {
    name  = "installCRDs"
    value = "true"
  }
}

resource "kubernetes_manifest" "cluster_issuer" {
  manifest = yamldecode(file("${path.module}/cluster_issuer.yaml"))
}
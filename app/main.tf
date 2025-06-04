resource "kubernetes_namespace" "glance" {
  metadata {
    name = var.namespace
  }
}

resource "kubernetes_deployment" "glance" {
  metadata {
    name      = var.app_name
    namespace = kubernetes_namespace.glance.metadata[0].name
    labels = {
      app = var.app_name
    }
  }

  spec {
    replicas = var.replicas

    selector {
      match_labels = {
        app = var.app_name
      }
    }

    template {
      metadata {
        labels = {
          app = var.app_name
        }
      }

      spec {
        container {
          name  = var.app_name
          image = var.image

          ports {
            container_port = var.container_port
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "glance" {
  metadata {
    name      = "${var.app_name}-service"
    namespace = kubernetes_namespace.glance.metadata[0].name
  }

  spec {
    selector = {
      app = kubernetes_deployment.glance.spec[0].template[0].metadata[0].labels.app
    }

    port {
      port        = var.service_port
      target_port = var.container_port
    }

    type = "ClusterIP"
  }
}

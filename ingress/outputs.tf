output "public_ingress_class" {
  value = helm_release.nginx_ingress_public.name
}

output "private_ingress_class" {
  value = helm_release.nginx_ingress_private.name
}
output "nginx_8081_url" {
  description = "First nginx container URL"
  value       = module.nginx_8081.service_url
}

output "nginx_8082_url" {
  description = "Second nginx container URL"
  value       = module.nginx_8082.service_url
}

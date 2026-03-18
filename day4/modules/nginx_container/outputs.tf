output "container_name" {
  description = "Name of created container"
  value       = docker_container.nginx.name
}

output "container_port" {
  description = "Port nginx is exposed on"
  value       = var.container_port
}

output "service_url" {
  description = "URL to access this nginx instance"
  value       = "http://localhost:${var.container_port}"
}

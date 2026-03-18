output "container_urls" {
  description = "All nginx container URLs"
  value = [
    "http://localhost:8081",
    "http://localhost:8082",
    "http://localhost:8083"
  ]
}

output "container_names" {
  value = docker_container.nginx_dynamic[*].name
}

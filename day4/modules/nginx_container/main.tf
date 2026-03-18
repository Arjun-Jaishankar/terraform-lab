terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

data "docker_image" "nginx" {
  name = var.image_name
}

resource "docker_container" "nginx" {
  name  = var.container_name
  image = data.docker_image.nginx.name

  ports {
    internal = 80
    external = var.container_port
  }

  start   = true
  restart = "unless-stopped"
}


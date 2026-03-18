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

locals {
  container_config = [
    {
      name = "web1"
      port = 8081
    },
    {
      name = "web2"
      port = 8082
    },
    {
      name = "web3"
      port = 8083
    }
  ]
}

resource "docker_image" "nginx" {
  count = length(local.container_config)
  name  = "nginx:latest"
}

resource "docker_container" "nginx_dynamic" {
  count  = length(local.container_config)
  
  name  = local.container_config[count.index].name
  image = docker_image.nginx[count.index].image_id

  ports {
    internal = 80
    external = local.container_config[count.index].port
  }

  start   = true
  restart = "unless-stopped"
}

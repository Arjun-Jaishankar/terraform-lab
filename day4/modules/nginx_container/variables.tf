variable "container_name" {
  description = "Name of the nginx container"
  type        = string
}

variable "container_port" {
  description = "Host port to map to nginx port 80"
  type        = number
}

variable "image_name" {
  description = "Docker image for nginx"
  type        = string
  default     = "nginx:latest"
}

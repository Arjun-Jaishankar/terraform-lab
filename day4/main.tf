# Root config calls modules - NO provider here
module "nginx_8081" {
  source = "./modules/nginx_container"
  
  container_name = "nginx-8081"
  container_port = 8081
  image_name     = "nginx:latest"
}

module "nginx_8082" {
  source = "./modules/nginx_container"
  
  container_name = "nginx-8082"
  container_port = 8082
  image_name     = "nginx:latest"
}

# Day 3 – Docker nginx with Terraform

## Steps

- Configure Docker provider and `docker_image` + `docker_container` in `main.tf`.
- Run:
  - `terraform init`
  - `terraform plan`
  - `terraform apply`
- Verify container with `docker ps`.
- Access nginx at `http://localhost:8080`.
- Output `service_url` prints the URL.

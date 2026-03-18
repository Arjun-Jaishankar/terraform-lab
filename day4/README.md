# Day 4 – Terraform modules for nginx

## Steps

- Module `modules/nginx_container` encapsulates nginx container creation.
- Root `main.tf` calls the module twice for ports 8081 and 8082.
- Run:
  - `terraform init`
  - `terraform plan`
  - `terraform apply`
- Use `docker ps` and `curl http://localhost:8081`, `http://localhost:8082` to verify.

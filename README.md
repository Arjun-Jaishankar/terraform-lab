# Software Lab-IV Assignment-4: Terraform 

**Student:** Arjun Jaishankar  
**GitHub:** Arjun-Jaishankar  
**Email:** arjunjaishankarsv@gmail.com  

## Directory Structure
terraform-lab/
├── day1/ Local provider (hello.txt)
├── day2/ Variables + dev/prod.tfvars
├── day3/ Docker nginx (port 8080)
├── day4/ Modules: nginx-8081, nginx-8082
├── day5/ Dynamic: web1(8081), web2(8082), web3(8083)
├── .github/workflows/terraform-check.yml Task 5 CI
├── .gitignore
└── README.md


## Task 6 Deliverables (Day5) terraform plan: docker_container.nginx_dynamic

terraform plan: docker_container.nginx_dynamic
docker ps: web1(8081), web2(8082), web3(8083) running
container_urls output: ["http://localhost:8081/2/3"]
URLs working: curl localhost:8081 → nginx welcome page


## Task 5: GitHub Actions CI
- Runs `terraform fmt/validate/plan` on **day5** automatically
- Triggers on push/PR to `main` branch
- Uses `hashicorp/setup-terraform@v3`

## Run Instructions
```bash
cd dayN/
terraform init && terraform plan && terraform apply

# Day 2 – Variables and tfvars

## Steps

- Define `filename` and `message` variables in `variables.tf`.
- Use `dev.tfvars` and `prod.tfvars` for environment-specific values.
- Run:
  - `terraform init`
  - `terraform apply -var-file="dev.tfvars"`
  - `terraform apply -var-file="prod.tfvars"`
- Check that `dev.txt` and `prod.txt` contain different messages.

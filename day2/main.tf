terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "message_file" {
  filename = "${path.module}/${var.filename}"
  content  = var.message
}

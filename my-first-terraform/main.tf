# 1. Define the provider we want to use
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

# 2. Define the resource to build
resource "local_file" "sample" {
  filename = "${path.module}/hello.txt"
  content  = "Hello World! Terraform is running on my Mac."
}

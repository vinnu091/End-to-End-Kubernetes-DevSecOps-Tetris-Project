terraform {
  backend "s3" {
    bucket       = "vinnu-tf-bucket"
    region       = "us-east-1"
    key          = "End-to-End-Kubernetes-DevSecOps-Tetris-Project/EKS-TF/terraform.tfstate"
    use_lockfile = true
    encrypt      = true
  }
  required_version = ">=1.14.0"
  required_providers {
    aws = {
      version = "~> 6.73.0"
      source  = "hashicorp/aws"
    }
  }
}

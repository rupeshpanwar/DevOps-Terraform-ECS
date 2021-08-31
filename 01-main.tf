```
terraform {
  backend "s3" {
    bucket         = "devops-dev-tfstate"
    key            = "devops-infra.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "devops-dev-tfstate-lock"
    profile = "rupesh" 
  }
}

provider "aws" {
  region = "ap-south-1"
}
```

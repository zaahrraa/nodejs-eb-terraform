terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = { #  Creates random values (like unique bucket names)
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
    archive = { # Creates ZIP files from folders AWS Beanstalk needs your code as a ZIP file
      source  = "hashicorp/archive"
      version = "~> 2.4"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"  #fuente
      version = ">=4.36.0, <4.47.0, !=4.43.0" #version aws
      }
  }
  required_version = "~>1.3.0" #version terraform
  #version = "=0.15.0"  #admite exclusivamente la version 0.15
  #version = ">=0.15.0"  #admite la v 0.15 y superiores
  #version = "~>=0.15.0"  #admite las versiones 0.15.0 hasta la ultima de la ver 0.15 ...por ejemplo 0.15.9
  #version = ">=0.15, <1.0.0" #admite versiones desde un mínimo de la 0.15 hasta un máximo de la 1.0.0
}

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  region = "us-east-2"
  alias  = "ohio"
}
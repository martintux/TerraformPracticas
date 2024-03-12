terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "proveedores_buenos_aires" {   #recurso
  bucket = "proveedores-${random_string.sufijo[count.index].id}"    #nombre del recurso utilizando el recurso random
  count  = 6
  tags = {
    Owner = "Martín"
    Environment = "Homologacion"
    Office = "Buenos Aires"

  }
}
resource "random_string" "sufijo" {
  length  = 8
  count = 6    #cantidad de recursos a crear
  special = false      #los buckets no pueden llevar caracteres especiales
  upper   = false      #los buckets no pueden llevar letras en MAY
  numeric = true
}
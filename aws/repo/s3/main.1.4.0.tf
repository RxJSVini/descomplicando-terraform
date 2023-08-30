terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

terraform {
  backend "s3" {
    #Lembre de trocar o bucket para o seu, não pode ser o mesmo nome"
    bucket = "descomplicandoterraform95"
    key    = "terraform-test.tfstate"
    region = "us-east-1"
  }
}

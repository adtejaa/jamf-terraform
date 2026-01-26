terraform {
  required_providers {
    jamfpro = {
      source  = "deploymenttheory/jamfpro"
       version = "0.31.2"
    }

    vault = {
      source = "hashicorp/vault"
      version = "5.6.0"
    }
  }
}


terraform {
  backend "remote" {
    organization = "commonwealdharmffjkr"

    workspaces {
      name = "terraform-jamfpro-main"
    }
  }
}

# terraform {
#   backend "s3" {
#     bucket         = "aws-jamf-tf-state"
#     key            = "jamf/jan21/statefile/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "jamf_lock_table"
#     encrypt        = true
#   }
# }

provider "vault" {
  address = "http://127.0.0.1:8200"
}



provider "jamfpro" {
  jamfpro_instance_fqdn = "https://commonwealdharmffjkr.jamfcloud.com"
  basic_auth_username   = "palladh"
  #   basic_auth_password                  = var.jamfpro_basic_auth_password
  basic_auth_password = "dharma9848"
  auth_method         = "basic"
}


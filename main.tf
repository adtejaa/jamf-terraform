terraform {
  required_providers {
    jamfpro = {
      source = "deploymenttheory/jamfpro"
    version = "0.33.0" }

    vault = {
      source  = "hashicorp/vault"
      version = "5.6.0"
    }
  }
}


terraform {
  backend "remote" {
    organization = "commonwealdharmffjkr"

    workspaces {
      name = "jamf-terraform"
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




provider "jamfpro" {
  jamfpro_instance_fqdn = var.jamfpro_instance_fqdn
  auth_method           = "basic"
  basic_auth_username   = var.jamfpro_basic_auth_username
  basic_auth_password   = var.jamfpro_basic_auth_password
}


resource "jamfpro_category" "this" {
  for_each = {
  
    "autopkg"                = "20"
    "Terraform"              = "20"
  }
  name     = each.key
  priority = each.value
}


resource "jamfpro_category" "this" {
  for_each = {
  
    "Testings"                = "21"
  }
  name     = each.key
  priority = each.value
}


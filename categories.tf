resource "jamfpro_category" "this" {
  for_each = {
  
    "Testings"                = "51"
  }
  name     = each.key
  priority = each.value
}


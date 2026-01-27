locals {
  start = 11

  categories = {
    for n in range(0, 12) :
    n => format("tf-example-category-%04d", local.start + n)
  }
}

resource "jamfpro_category" "example_category" {
  for_each = local.categories

  name     = each.value
  priority = 1
}

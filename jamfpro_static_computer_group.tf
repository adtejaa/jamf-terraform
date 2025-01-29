resource "jamfpro_static_computer_group" "managed_favourites_exclusion" {
  name = "Managed Favourites Static Exclusion (tf)"

  lifecycle {
    ignore_changes = [
      assigned_computer_ids
    ]
  }
}
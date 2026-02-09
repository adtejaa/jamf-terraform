resource "jamfpro_static_computer_group" "managed_favourites_exclusion" {
  name = "Managed Favourites Static refresh(tf)"

  lifecycle {
    ignore_changes = [
      assigned_computer_ids
    ]
  }
}


resource "jamfpro_static_computer_group" "managed_favourites_exclusion_new" {
  name = "Managed Favourites Static new(tf)"

  lifecycle {
    ignore_changes = [
      assigned_computer_ids
    ]
  }
}



resource "jamfpro_static_computer_group" "managed_favourites_exclusion_new1" {
  name = "Managed Favourites Static new2(tf)"

  lifecycle {
    ignore_changes = [
      assigned_computer_ids
    ]
  }
}


check "test" {
  data "jamfpro_static_computer_group" "example_computer" {
    name = "TEST Group"
  }

  assert {
    condition     = data.jamfpro_static_computer_group.example_computer.id != null
    error_message = "group not found"
  }
}


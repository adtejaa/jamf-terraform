# data "vault_kv_secret_v2" "build_pfx" {
#   mount = "secret"
#   name  = "jamf/building"
# }

# data "vault_kv_secret_v2" "categor_pfx" {
#   mount = "secret"
#   name  = "jamf/category"
# }

# output "building_prefix" {
#   value = data.vault_kv_secret_v2.build_pfx.data["prefex"]
#   sensitive = true
# }

# output "building_prefix" {
#   value = data.vault_kv_secret_v2.categor_pfx
#   sensitive = true
# }


resource "jamfpro_building" "jamfpro_building_001" {
  name            = "CBA-APPLE"
  street_address1 = "The McIntosh Tree"
  street_address2 = "One Apple Park Way"
  city            = "Cupertino"
  state_province  = "California"
  zip_postal_code = "95014"
  country         = "The United States of America"
}

resource "jamfpro_building" "jamfpro_building_002" {
  name            = "ABC-APPLE-01"
  street_address1 = "The McIntosh Tree"
  street_address2 = "One Apple Park Way"
  city            = "Cupertino"
  state_province  = "Californiaa"
  zip_postal_code = "950143"
  country         = "The United States of America"
}

resource "jamfpro_building" "jamfpro_building_003" {
  name            = lower("${var.build_new}-pineapple-01")
  street_address1 = "The McIntosh Tree"
  street_address2 = "One Apple Park Way"
  city            = "Cupertino"
  state_province  = "Californiaa"
  zip_postal_code = "1234"
  country         = "The United States of America"

  lifecycle {
    ignore_changes        = [city]
    create_before_destroy = true
  }
}

resource "jamfpro_building" "jamfpro_building_004" {
  name            = lower("${var.build_new}-pineapple-04")
  street_address1 = "The McIntosh Tree"
  street_address2 = "One Apple Park Way"
  city            = "Cupertino"
  state_province  = "Californiaa"
  zip_postal_code = "dfdfdfd"
  country         = "The United States of America"

  lifecycle {
    ignore_changes        = [city]
    create_before_destroy = true
  }
}

resource "jamfpro_building" "jamfpro_building_005" {
  name            = lower("${var.build_new}-pineapple-056")
  street_address1 = "The McIntosh Tree"
  street_address2 = "One Apple Park Way"
  city            = "Cupertino"
  state_province  = "Californiaa"
  zip_postal_code = "dfdfdfd"
  country         = "The United States of America"

  lifecycle {
    ignore_changes        = [city]
    create_before_destroy = true
  }
}

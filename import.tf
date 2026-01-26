resource "jamfpro_policy" "import_example" {
  name      = "import_example"
  enabled   = false
  frequency = "Once every day"

  scope {
    all_computers = false
  }

  payloads {

  }
}


resource "jamfpro_policy" "import_example_3" {
  category_id                   = -1
  enabled                       = true
  frequency                     = "Ongoing"
  name                          = "import_example_3"
  network_requirements          = "Any"
  notify_on_each_failed_retry   = false
  offline                       = false
  retry_attempts                = -1
  retry_event                   = "none"
  site_id                       = 1
  target_drive                  = "/"
  trigger_checkin               = false
  trigger_enrollment_complete   = false
  trigger_login                 = false
  trigger_network_state_changed = false
  trigger_other                 = null
  trigger_startup               = false

  payloads {
    network_requirements = null

    packages {
      distribution_point = "default"

      package {
        action                      = "Install"
        fill_existing_user_template = false
        fill_user_template          = false
        id                          = 52
      }
    }
  }

  scope {
    all_computers      = false
    all_jss_users      = false
    building_ids       = []
    computer_group_ids = []
    computer_ids       = []
    department_ids     = []
    jss_user_group_ids = []
    jss_user_ids       = []
  }
}

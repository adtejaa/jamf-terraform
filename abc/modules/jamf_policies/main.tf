resource "jamfpro_policy" "this" {
  name    = var.name
  enabled = var.enabled

  trigger_other               = "EVENT"
  frequency                   = "Once per computer"
  retry_event                 = "none"
  retry_attempts              = -1
  notify_on_each_failed_retry = false
  target_drive                = "/"
  offline                     = false

  scope {
    all_computers = true
    all_jss_users = false
  }

  payloads {
    maintenance {
      recon = true
    }

    files_processes {
      run_command = var.run_command
    }
  }
}

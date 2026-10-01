variable "groups" {
  description = "describes group configuration"
  type = map(object({
    administrative_unit_ids    = optional(list(string))
    assignable_to_role         = optional(bool)
    auto_subscribe_new_members = optional(bool)
    behaviors                  = optional(list(string))
    description                = optional(string)
    display_name               = optional(string)
    external_senders_allowed   = optional(bool)
    hide_from_address_lists    = optional(bool)
    hide_from_outlook_clients  = optional(bool)
    mail_enabled               = optional(bool)
    mail_nickname              = optional(string)
    members                    = optional(list(string))
    ignore_members             = optional(bool, false)
    onpremises_group_type      = optional(string)
    owners                     = optional(list(string), [])
    ignore_owners              = optional(bool, false)
    prevent_duplicate_names    = optional(bool)
    provisioning_options       = optional(list(string))
    security_enabled           = optional(bool, true)
    theme                      = optional(string)
    types                      = optional(list(string))
    visibility                 = optional(string)
    writeback_enabled          = optional(bool)
    dynamic_membership = optional(object({
      enabled = optional(bool, true)
      rule    = string
    }))
  }))
}

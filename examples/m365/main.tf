module "groups" {
  source  = "codectl/groups/azuread"
  version = "~> 1.0"

  groups = {
    group1 = {
      display_name  = "Group 1"
      members       = ["12345678-abcd-0987-1234-123456789012"]
      owners        = ["12345678-abcd-0987-1234-123456789012"]
      mail_enabled  = true
      mail_nickname = "group1"
      types         = ["Unified"]
    }
    group2 = {
      display_name  = "Group 2"
      owners        = ["12345678-abcd-0987-1234-123456789012"]
      mail_enabled  = true
      mail_nickname = "group2"
      types         = ["Unified"]
    }
  }
}

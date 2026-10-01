module "groups" {
  source  = "codectl/groups/azuread"
  version = "~> 1.0"

  groups = {
    group1 = {
      display_name = "Group 1 - Marketing"
      types        = ["DynamicMembership"]
      dynamic_membership = {
        rule = "user.department -eq \"Marketing\""
      }
    }
    group2 = {
      display_name = "Group 2 - Engineering"
      types        = ["DynamicMembership"]

      dynamic_membership = {
        rule    = "user.department -eq \"Engineering\""
        enabled = false
      }
    }
  }
}

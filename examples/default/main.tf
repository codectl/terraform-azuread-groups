module "groups" {
  source  = "codectl/groups/azuread"
  version = "~> 1.0"

  groups = {
    group1 = {
      display_name = "Group 1"
      members      = ["12345678-abcd-0987-1234-123456789012"]
    }
    group2 = {
      display_name = "Group 2"
      owners       = ["12345678-abcd-0987-1234-123456789012"]
    }
  }
}

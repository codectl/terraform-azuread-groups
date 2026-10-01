output "groups" {
  description = "contains all Entra ID groups"
  value       = merge(azuread_group.main, azuread_group_without_members.manual)
}

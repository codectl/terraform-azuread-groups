# Entra ID (AzureAD) Groups

 This terraform module simplifies the creation and management of Entra ID Groups and its members or owners, all managed through code.

## Features

Capability to manage groups, and corresponding owners and / or members.

Includes support for dynamic membership groups and M365 groups.

Utilization of terratest for robust validation.

<!-- BEGIN_TF_DOCS -->
## Requirements

The following requirements are needed by this module:

- <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) (~> 1.0)

- <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) (~> 3.0)

## Providers

The following providers are used by this module:

- <a name="provider_azuread"></a> [azuread](#provider\_azuread) (3.10.0)

## Resources

The following resources are used by this module:

- [azuread_group.main](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/group) (resource)
- [azuread_group_without_members.manual](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/group_without_members) (resource)

## Required Inputs

The following input variables are required:

### <a name="input_groups"></a> [groups](#input\_groups)

Description: describes group configuration

Type:

```hcl
map(object({
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
```

## Optional Inputs

No optional inputs.

## Outputs

The following outputs are exported:

### <a name="output_groups"></a> [groups](#output\_groups)

Description: contains all Entra ID groups
<!-- END_TF_DOCS -->

## Goals

For more information, please see our [goals and non-goals](./GOALS.md).

## Testing

For more information, please see our testing [guidelines](./TESTING.md)

## Notes

Using a dedicated module, we've developed a naming convention for resources that's based on specific regular expressions for each type, ensuring correct abbreviations and offering flexibility with multiple prefixes and suffixes.

Full examples detailing all usages, along with integrations with dependency modules, are located in the examples directory.

To update the module's documentation run `make doc`

## Contributors

We welcome contributions from the community! Whether it's reporting a bug, suggesting a new feature, or submitting a pull request, your input is highly valued.

For more information, please see our contribution [guidelines](./CONTRIBUTING.md).

## License

MIT Licensed. See [LICENSE](./LICENSE) for full details.

## References

- [Documentation](https://learn.microsoft.com/en-us/entra/fundamentals/concept-learn-about-groups)
- [Rest Api](https://learn.microsoft.com/en-us/graph/api/resources/groups-overview)

output "policies" {
    description = "Map of The Definition IDs of the Custom Policies"
    value = module.policy.policies
}

output "initiative" {
    description = "The Definition IDs of the Initiatives"
    value = module.policy.initiatives
}
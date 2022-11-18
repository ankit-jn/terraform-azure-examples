module "policy" {
    source = "git::https://github.com/arjstack/terraform-azure-policy.git?ref=v1.0.0"
    
    policies = var.policies
}
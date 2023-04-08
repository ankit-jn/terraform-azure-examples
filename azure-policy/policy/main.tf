module "policy" {
    source = "git::https://github.com/ankit-jn/terraform-azure-policy.git"
    
    policies = var.policies
}
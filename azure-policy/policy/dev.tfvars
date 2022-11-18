policies = [
    {
        name = "arjstack-enforce-tag"
        policy_file = "policies/enforce-tag.json"
        assignments = [
            # {
            #     scope      = "/providers/Microsoft.Management/managementGroups/arjstack",
            #     not_scopes = []
            #     parameters = {
            #         "tagName" = "BusinessUnit"
            #     }
            # },
            {
                scope      = "/subscriptions/e0144b68-50de-4ef2-a45a-e905392f8345",
                not_scopes = []
                parameters = {
                    "tagName" = "Owner"
                }
            },
            {
                scope      = "/subscriptions/e0144b68-50de-4ef2-a45a-e905392f8345/resourceGroups/dev",
                not_scopes = []
                parameters = {
                    "tagName" = "ProjectName"
                }
            }
        ]
    },
    {
        name = "e56962a6-4747-49cd-b67b-bf8b01975c4c" ## Policy - Allowed Locations
        assignments = [
            {
                scope      = "/subscriptions/e0144b68-50de-4ef2-a45a-e905392f8345",
                not_scopes = []
                parameters = {
                    "listOfAllowedLocations" = ["southeastasia"]
                }
            },
            
        ]
    }
]
policies = [
    {
        name = "arjstack-enforce-tag"
        display_name = "Require a tag on resources"
        metadata = {
            "version": "1.0.0",
            "category": "Tags"
        }

        policy_file = "policies/enforce-tag.json"
    },
]

initiatives = [
    {
        name = "arjstack-initiative"
        custom_policies = [
            "arjstack-enforce-tag"
        ]
        builtin_policies = [
            "e56962a6-4747-49cd-b67b-bf8b01975c4c", ## Policy - Allowed Locations
            "0b60c0b2-2dc2-4e1c-b5c9-abbed971de53" ## Policy - Key vaults should have purge protection enabled
        ]

        assignments = [
            # {
            #     scope      = "/providers/Microsoft.Management/managementGroups/arjstack",
            #     not_scopes = []
            #     parameters = {
            #         "arjstack-enforce-tag_tagName" = "BusinessUnit"
            #         "arjstack-enforce-tag_listOfAllowedLocations" = ["centralindia", "southindia", "westindia", "westeurope", "northeurope"]
            #     }
            # },
            {
                scope      = "/subscriptions/e0144b68-50de-4ef2-a45a-e905392f8345",
                not_scopes = []
                parameters = {
                    "arjstack-enforce-tag_tagName" = "Owner"
                    "e56962a6-4747-49cd-b67b-bf8b01975c4c_listOfAllowedLocations" = ["centralindia", "southeastasia", "westindia"]
                }
            },
            {
                scope      = "/subscriptions/e0144b68-50de-4ef2-a45a-e905392f8345/resourceGroups/dev",
                not_scopes = []
                parameters = {
                    "arjstack-enforce-tag_tagName" = "ProjectName"
                    "e56962a6-4747-49cd-b67b-bf8b01975c4c_listOfAllowedLocations" = ["centralindia"]
                    "0b60c0b2-2dc2-4e1c-b5c9-abbed971de53_effect" = "Deny"
                }
            }
        ]
    }
]

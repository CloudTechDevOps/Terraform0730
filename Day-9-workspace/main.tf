resource "aws_vpc" "name" {
  cidr_block = "10.0.0.0/24"
}

# new, list, show, select and delete Terraform workspaces.

# Subcommands:
#     delete    Delete a workspace
#     list      List Workspaces
#     new       Create a new workspace
#     select    Select a workspace
#     show      Show the name of the current workspace

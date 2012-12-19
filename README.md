# Purpose
To grab the members of active directory groups quickly and easily

# Nuances
* I am not 100% sure that it filters out Security Groups
* It will display a group in the output regardless of whether there are members in it
* It appends to an existing file

# Execute
    .\get_ad_group_memberships.ps1

# Output
Script will default to place output to:
 * C:\support\group_membership.txt

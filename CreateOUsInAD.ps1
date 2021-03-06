﻿# Creating OUs for AD domain cs.pec
New-ADOrganizationalUnit -Name pecpSupportUsers -Path "DC=cs,DC=pec"
New-ADOrganizationalUnit -Name pecpSupportPCs -Path "DC=cs,DC=pec"
New-ADOrganizationalUnit -Name Room221 -Path "OU=pecpSupportUsers,DC=cs,DC=pec"
New-ADOrganizationalUnit -Name Room222 -Path "OU=pecpSupportUsers,DC=cs,DC=pec"
New-ADOrganizationalUnit -Name Room223 -Path "OU=pecpSupportUsers,DC=cs,DC=pec"
New-ADOrganizationalUnit -Name Room204 -Path "OU=pecpSupportUsers,DC=cs,DC=pec"
New-ADOrganizationalUnit -Name Room221 -Path "OU=pecpSupportPCs,DC=cs,DC=pec"
New-ADOrganizationalUnit -Name Room222 -Path "OU=pecpSupportPCs,DC=cs,DC=pec"
New-ADOrganizationalUnit -Name Room223 -Path "OU=pecpSupportPCs,DC=cs,DC=pec"
New-ADOrganizationalUnit -Name Room204 -Path "OU=pecpSupportPCs,DC=cs,DC=pec"
#create security groups
New-ADGroup -Name "Users221d" -SamAccountName Users221d -GroupCategory Security -GroupScope Global -DisplayName "Users221d" -Path "OU=Room221,OU=pecpSupportUsers,DC=cs,DC=pec" -Description "Members of this group are Room221 Users" 
New-ADGroup -Name "Users222d" -SamAccountName Users222d -GroupCategory Security -GroupScope Global -DisplayName "Users222d" -Path "OU=Room222,OU=pecpSupportUsers,DC=cs,DC=pec" -Description "Members of this group are Room222 Users"
New-ADGroup -Name "Users223d" -SamAccountName Users223d -GroupCategory Security -GroupScope Global -DisplayName "Users223d" -Path "OU=Room223,OU=pecpSupportUsers,DC=cs,DC=pec" -Description "Members of this group are Room223 Users"  
New-ADGroup -Name "Users204d" -SamAccountName Users204d -GroupCategory Security -GroupScope Global -DisplayName "Users204d" -Path "OU=Room204,OU=pecpSupportUsers,DC=cs,DC=pec" -Description "Members of this group are Room204 Users" 
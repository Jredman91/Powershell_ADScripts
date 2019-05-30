Import-Module ActiveDirectory
New-ADUser `
 -Name "TestUser" `
 -Path  "OU=Room223,OU=pecpSupportUsers,DC=cs,DC=pec" `
 -SamAccountName  "TestUser" `
 -DisplayName "Test User" `
 -AccountPassword (ConvertTo-SecureString "Password01" -AsPlainText -Force) `
 -ChangePasswordAtLogon $true  `
 -Enabled $true
Add-ADGroupMember "Users223" "TestUser";
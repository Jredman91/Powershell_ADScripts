Import-Module ActiveDirectory
Import-Csv "C:\PSScriptsforAD\NewUsers.csv" | ForEach-Object {
 $userPrincinpal = $_."samAccountName" + "@cs.pec"
New-ADUser -Name $_.Name `
 -Path $_."ParentOU" `
 -SamAccountName  $_."samAccountName" `
 -UserPrincipalName  $userPrincinpal `
 -AccountPassword (ConvertTo-SecureString "Password01" -AsPlainText -Force) `
 -ChangePasswordAtLogon $true  `
 -Enabled $true
Add-ADGroupMember "Domain Admins" $_."samAccountName";
}
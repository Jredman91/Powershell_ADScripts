Import-Module ActiveDirectory
Import-Csv "C:\PSScriptsforAD\NewUsers221d.csv" | ForEach-Object {
 $userPrincinpal = $_."samAccountName" + "@cs.local"
New-ADUser -Name $_.Name `
 -Path $_."ParentOU" `
 -SamAccountName  $_."samAccountName" `
 -UserPrincipalName  $userPrincinpal `
 -AccountPassword (ConvertTo-SecureString "Password01" -AsPlainText -Force) `
 -ChangePasswordAtLogon $true  `
 -Enabled $true
Add-ADGroupMember "Users221d" $_."samAccountName";
}
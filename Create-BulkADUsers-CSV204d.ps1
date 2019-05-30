Import-Module ActiveDirectory
Import-Csv "C:\psscriptsforad\NewUsers204d.csv" | ForEach-Object {
 $userPrincinpal = $_."samAccountName" + "@cs.pec"
New-ADUser -Name $_.Name `
 -Path $_."ParentOU" `
 -SamAccountName  $_."samAccountName" `
 -UserPrincipalName  $userPrincinpal `
 -AccountPassword (ConvertTo-SecureString "Password01" -AsPlainText -Force) `
 -ChangePasswordAtLogon $true  `
 -Enabled $true
Add-ADGroupMember "Users204d" $_."samAccountName";
}
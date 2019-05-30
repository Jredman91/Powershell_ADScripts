Import-Module ActiveDirectory
Import-Csv "C:\psscriptsforad\NewComputerObjectsRoom223.csv" | ForEach-Object {
 $userPrincinpal = $_."samAccountName" + "@cs.pec"
New-ADComputer -Name $_.Name `
 -Path $_."ParentOU" `
 -SamAccountName  $_."samAccountName" `
 -Enabled $true
}
﻿New-ADUser -SamAccountName s222d31 -Name "s222d31" -UserPrincipalName s222d31@cs.pec -AccountPassword (ConvertTo-SecureString -AsPlainText "Password01" -Force) -Enabled $true -PasswordNeverExpires $true -Path 'CN=Day,CN=Class222,CN=Domain Users,CN=Pec OU,DC=CS,DC=PEC'
Set-ADUser -Identity s222d31 -ChangePasswordAtLogon $true
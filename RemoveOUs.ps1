set-ADorganizationalunit -Identity "OU=pecpsupportPCs,dc=cs,dc=pec" -ProtectedFromAccidentalDeletion:$false
set-ADorganizationalunit -Identity "OU=pecpsupportusers,dc=cs,dc=pec" -ProtectedFromAccidentalDeletion:$false
remove-adorganizationalunit -Identity "OU=pecpSupportPCs,DC=cs,DC=pec" -Recursive -confirm:$false 
remove-adorganizationalunit -Identity "OU=pecpSupportusers,DC=cs,DC=pec" -Recursive -confirm:$false
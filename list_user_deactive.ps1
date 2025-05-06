# Define a OU onde estão os usuários (ajuste se necessário)
$ouUsuarios = "OU=Usuarios,OU=Diretorio,DC=seu,DC=dominio"

# Lista usuários desativados
Get-ADUser -SearchBase $ouUsuarios -Filter {Enabled -eq $false} -Properties Name, SamAccountName |
Sort-Object Name |
Select-Object @{Name="Usuario";Expression={ "$($_.Name) ($($_.SamAccountName))" }}
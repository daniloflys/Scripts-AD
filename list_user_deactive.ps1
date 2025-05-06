# Define a OU onde est�o os usu�rios (ajuste se necess�rio)
$ouUsuarios = "OU=Usuarios,OU=Diretorio,DC=seu,DC=dominio"

# Lista usu�rios desativados
Get-ADUser -SearchBase $ouUsuarios -Filter {Enabled -eq $false} -Properties Name, SamAccountName |
Sort-Object Name |
Select-Object @{Name="Usuario";Expression={ "$($_.Name) ($($_.SamAccountName))" }}
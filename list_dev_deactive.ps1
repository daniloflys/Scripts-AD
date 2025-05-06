# Define o contêiner padrão dos computadores
$ouComputadores = "CN=Computers,DC=seu,DC=dominio"

# Lista computadores desativados
Get-ADComputer -SearchBase $ouComputadores -Filter {Enabled -eq $false} -Properties Name |
Sort-Object Name |
Select-Object -ExpandProperty Name
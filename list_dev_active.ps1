# Define o caminho do contêiner padrão onde ficam os computadores
$ouComputadores = "CN=Computers,DC=seu,DC=dominio"

# Busca e ordena os computadores ativos
$computadoresAtivos = Get-ADComputer -SearchBase $ouComputadores -Filter {Enabled -eq $true} -Properties Name

# Exibe apenas os nomes, ordenados
$computadoresAtivos | Sort-Object Name | Select-Object -ExpandProperty Name
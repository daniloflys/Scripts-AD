# Define o cont�iner padr�o dos computadores
$ouComputadores = "CN=Computers,DC=seu,DC=dominio"

# Conta computadores desativados
$qtdComputadoresDesativados = (Get-ADComputer -SearchBase $ouComputadores -Filter {Enabled -eq $false}).Count

# Exibe apenas o n�mero
Write-Output $qtdComputadoresDesativados
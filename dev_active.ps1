# Define o caminho do cont�iner padr�o onde ficam os computadores
$ouComputadores = "CN=Computers,DC=seu,DC=dominio"

# Conta os computadores ativos
$quantidadeAtivos = (Get-ADComputer -SearchBase $ouComputadores -Filter {Enabled -eq $true}).Count

# Exibe apenas o n�mero
Write-Output $quantidadeAtivos
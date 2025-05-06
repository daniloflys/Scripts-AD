# Define o caminho do contêiner padrão onde ficam os computadores
$ouComputadores = "CN=Computers,DC=seu,DC=dominio"

# Conta os computadores ativos
$quantidadeAtivos = (Get-ADComputer -SearchBase $ouComputadores -Filter {Enabled -eq $true}).Count

# Exibe apenas o número
Write-Output $quantidadeAtivos
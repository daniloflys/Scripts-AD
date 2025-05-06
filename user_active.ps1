# Define o caminho da OU
$ou = "OU=Usuarios,OU=Diretorio,DC=seu,DC=dominio"

# Conta apenas usuários habilitados (ativos)
$quantidade = (Get-ADUser -SearchBase $ou -Filter {Enabled -eq $true}).Count

# Exibe o resultado
Write-Output "$quantidade"
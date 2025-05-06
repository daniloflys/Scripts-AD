# Define a OU onde estão os usuários (ajuste se necessário)
$ouUsuarios = "OU=Usuarios,OU=Diretorio,DC=seu,DC=dominio"

# Conta usuários desativados
$qtdUsuariosDesativados = (Get-ADUser -SearchBase $ouUsuarios -Filter {Enabled -eq $false}).Count

# Exibe apenas o número
Write-Output $qtdUsuariosDesativados
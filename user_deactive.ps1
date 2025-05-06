# Define a OU onde est�o os usu�rios (ajuste se necess�rio)
$ouUsuarios = "OU=Usuarios,OU=Diretorio,DC=seu,DC=dominio"

# Conta usu�rios desativados
$qtdUsuariosDesativados = (Get-ADUser -SearchBase $ouUsuarios -Filter {Enabled -eq $false}).Count

# Exibe apenas o n�mero
Write-Output $qtdUsuariosDesativados
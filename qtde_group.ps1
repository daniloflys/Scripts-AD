# Define o caminho do dom�nio raiz
$dominio = "DC=seu,DC=dominio"

# Conta os objetos de primeiro n�vel (OUs e containers)
$quantidade = (Get-ADObject -SearchBase $dominio -SearchScope OneLevel -Filter * |
    Where-Object { $_.ObjectClass -in @("organizationalUnit", "container") }).Count

# Exibe somente o n�mero
Write-Output $quantidade
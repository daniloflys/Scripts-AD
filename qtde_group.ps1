# Define o caminho do domínio raiz
$dominio = "DC=seu,DC=dominio"

# Conta os objetos de primeiro nível (OUs e containers)
$quantidade = (Get-ADObject -SearchBase $dominio -SearchScope OneLevel -Filter * |
    Where-Object { $_.ObjectClass -in @("organizationalUnit", "container") }).Count

# Exibe somente o número
Write-Output $quantidade
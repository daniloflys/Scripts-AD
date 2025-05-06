# Define o caminho do domínio raiz
$dominio = "DC=seu,DC=dominio"

# Lista apenas os objetos diretamente abaixo do domínio (primeiro nível)
Get-ADObject -SearchBase $dominio -SearchScope OneLevel -Filter * |
Where-Object { $_.ObjectClass -in @("organizationalUnit", "container") } |
Select-Object Name, ObjectClass
# Define o caminho do dom�nio raiz
$dominio = "DC=seu,DC=dominio"

# Lista apenas os objetos diretamente abaixo do dom�nio (primeiro n�vel)
Get-ADObject -SearchBase $dominio -SearchScope OneLevel -Filter * |
Where-Object { $_.ObjectClass -in @("organizationalUnit", "container") } |
Select-Object Name, ObjectClass
# Função para remover acentos
function Remover-Acentos {
    param ([string]$texto)
    $textoNormalized = $texto.Normalize([Text.NormalizationForm]::FormD)
    $semAcento = -join ($textoNormalized.ToCharArray() | Where-Object { [Globalization.CharUnicodeInfo]::GetUnicodeCategory($_) -ne "NonSpacingMark" })
    return $semAcento
}

# Define o caminho da OU
$ou = "OU=Usuarios,OU=Diretorio,DC=seu,DC=dominio"

# Busca usuários ativos com propriedades necessárias
$usuariosAtivos = Get-ADUser -SearchBase $ou -Filter {Enabled -eq $true} -Properties Name, SamAccountName

# Ordena por nome removendo acentos e exibe formatado
$usuariosAtivos |
    Sort-Object { Remover-Acentos $_.Name } |
    Select-Object @{Name="Usuario";Expression={ "$(Remover-Acentos $_.Name) ($($_.SamAccountName))" }}
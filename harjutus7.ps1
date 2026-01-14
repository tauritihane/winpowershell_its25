# 1. Määrame võimalikud grupi värvid
$varvid = @("Red", "Green", "Yellow", "Blue")

# 2. Loome vahemiku 1 kuni 20 ja määrame igale numbrile juhusliku värvi
$tulemus = 1..20 | ForEach-Object {
    [PSCustomObject]@{
        RollNumber = $_
        # Get-Random valib massiivist $varvid ühe suvalise elemendi
        Group      = $varvid | Get-Random
    }
}

# 3. Kuvame tulemuse tabelina
$tulemus | Format-Table -AutoSize
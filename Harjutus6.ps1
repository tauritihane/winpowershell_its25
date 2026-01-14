# 1. LOOME FAILI (et viga ei korduks)
$andmed = @(
    [PSCustomObject]@{Name = 'John';  Age = 8}
    [PSCustomObject]@{Name = 'Joe';   Age = 12}
    [PSCustomObject]@{Name = 'Mary';  Age = 7}
    [PSCustomObject]@{Name = 'Tom';   Age = 15}
    [PSCustomObject]@{Name = 'Lily';  Age = 16}
    [PSCustomObject]@{Name = 'Emily'; Age = 9}
)
$andmed | Export-Csv -Path "kasutajad.csv" -NoTypeInformation -Encoding utf8

# 2. IMPORTIME JA MÄÄRAME KOOLIASTMED
$imporditud = Import-Csv -Path "kasutajad.csv"

$tulemus = $imporditud | Select-Object Name, @{
    Name = 'School'
    Expression = {
        $vanus = [int]$_.Age
        if ($vanus -ge 4 -and $vanus -le 10) { "Junior" }
        elseif ($vanus -ge 11 -and $vanus -le 17) { "Senior" }
        else { "Other" }
    }
}

# 3. KUVAME LÕPPTULEMUSE
$tulemus | Format-Table -AutoSize
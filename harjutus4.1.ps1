# 1. Küsi kasutajalt kaks väärtust
$val1 = Read-Host "Sisesta esimene arv"
$val2 = Read-Host "Sisesta teine arv"

# 2. Muuda sisestatud tekst numbriteks (Type Casting)
$num1 = [int]$val1
$num2 = [int]$val2

# 3. Võrdle numbreid ja kuva suurem
if ($num1 -gt $num2) {
    Write-Host "Suurem number on : $num1"
}
elseif ($num2 -gt $num1) {
    Write-Host "Suurem arv on : $num2"
}
else {
    Write-Host "Numbrid on võrdsed!"
}
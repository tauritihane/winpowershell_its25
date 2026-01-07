# 1. Loo esimene massiiv numbritega
$massiiv1 = @(10, 20, 30, 40)

# 2. Loo teine massiiv numbritega
$massiiv2 = @(5, 15, 25, 35)

# 3. Loo tühi massiiv tulemuste jaoks
$massiiv3 = @()

# Kasutame 'for' tsüklit, et käia läbi kõik positsioonid (indeksid)
for ($i = 0; $i -lt $massiiv1.Count; $i++) {
    # Liidame massiivide vastavatel positsioonidel olevad arvud
    $summa = $massiiv1[$i] + $massiiv2[$i]
    
    # Lisame tulemuse kolmandasse massiivi
    $massiiv3 += $summa
}

# Kuvame tulemused
Write-Host "Massiiv 1: $massiiv1"
Write-Host "Massiiv 2: $massiiv2"
Write-Host "Massiiv 3 (summa): $massiiv3"
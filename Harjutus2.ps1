# 1. Loo esimene hashtable (Töötatud päevad)
$hashtable1 = @{
    "John" = 12
    "Joe"  = 20
    "Mary" = 18
}

# 2. Loo teine hashtable (Päevapalk)
$hashtable2 = @{
    "John" = 100
    "Joe"  = 120
    "Mary" = 150
}

# 3. Loo tühi kolmas hashtable tulemuste jaoks
$hashtable3 = @{}

# Kasutame tsüklit, et käia läbi kõik nimed (võtmed) esimesest tabelist
foreach ($nimi in $hashtable1.Keys) {
    # Arvutame: päevad * päevapalk
    $kogupalk = $hashtable1[$nimi] * $hashtable2[$nimi]
    
    # Lisame tulemuse kolmandasse tabelisse vasta nime alla
    $hashtable3[$nimi] = $kogupalk
}

# Tulemuste kuvamine
Write-Host "--- Hashtable 1 (Päevad) ---"
$hashtable1

Write-Host "`n--- Hashtable 2 (Päevapalk) ---"
$hashtable2

Write-Host "`n--- Hashtable 3 (Kogupalk) ---"
$hashtable3
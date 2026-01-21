#Küsime andmed
$eesnimi = Read-Host "Sisesta eesnimi"
$perenimi = Read-Host "Sisesta perenimi"

#Kasutajanime moodustamine
$kasutajanimi = "$($eesnimi).$($perenimi)".ToLower()
$taisnimi = "$eenimi $perenmimi"
$kirjeldus = "Lokaalne kasutaja: $taisnimi"

# Parooli ettevalmistamine (PowerShell vajab parooli SecureString vormingus)
$parool = ConvertTo-SecureString "Parool1!" -AsPlainText -Force

# 3. & 4. Kasutaja loomine ja vigade kontrollimine
try {
    # Proovime luua uue lokaalse kasutaja
    # -ErrorAction Stop on vajalik, et viga satuks 'catch' plokki
    New-LocalUser -Name $kasutajanimi `
                  -FullName $taisnimi `
                  -Description $kirjeldus `
                  -Password $parool `
                  -ErrorAction Stop

    Write-Host ""
    Write-Host "Kasutaja $kasutajanimi on edukalt loodud!" -ForegroundColor Green
}
catch {
    # Kui tekkis viga (nt kasutaja on juba olemas või puuduvad õigused)
    Write-Host ""
    Write-Host "VIGA: Kasutaja loomine ebaõnnestus." -ForegroundColor Red
    Write-Host "Põhjus: $($_.Exception.Message)" -ForegroundColor Red
}
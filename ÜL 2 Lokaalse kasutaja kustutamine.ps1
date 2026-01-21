# 1. Küsime kustutatava kasutaja andmed
$eesnimi = Read-Host "Sisesta kustutatava kasutaja eesnimi"
$perenimi = Read-Host "Sisesta kustutatava kasutaja perenimi"

# 2. Kasutajanime moodustamine (sama loogika mis loomisel)
$kasutajanimi = "$($eesnimi).$($perenimi)".ToLower()

# 3. & 4. Kasutaja kustutamine ja tagasiside
try {
    # Proovime eemaldada lokaalset kasutajat
    # Märkus: Kasutame Remove-LocalUser, kuna tegu on lokaalse seadmega.
    # Remove-ADUser on mõeldud Active Directory (domeeni) jaoks.
    Remove-LocalUser -Name $kasutajanimi -ErrorAction Stop

    Write-Host ""
    Write-Host "ÕNNESTUS: Kasutaja '$kasutajanimi' on süsteemist eemaldatud." -ForegroundColor Green
}
catch {
    # Kui kasutajat ei leitud või tekkis muu tõrge
    Write-Host ""
    Write-Host "VIGA: Kasutaja '$kasutajanimi' kustutamine ebaõnnestus." -ForegroundColor Red
    Write-Host "Põhjus: $($_.Exception.Message)" -ForegroundColor Red
}
# 1. Kuva menüü ekraanile
Write-Host "--- RIIKIDE VALIKUMENÜÜ ---" -ForegroundColor Yellow
Write-Host "1. Eesti"
Write-Host "2. Soome"
Write-Host "3. Läti"
Write-Host "4. Leedu"
Write-Host "--------------------------"

# 2. Küsi kasutajalt valikut
$valik = Read-Host "Palun vali riigi number (1-4)"

# 3. Kontrolli valikut switch-lausega
switch ($valik) {
    "1" { Write-Host "Eesti pealinn on Tallinn." -ForegroundColor Green }
    "2" { Write-Host "Soome pealinn on Helsingi." -ForegroundColor Green }
    "3" { Write-Host "Läti pealinn on Riia." -ForegroundColor Green }
    "4" { Write-Host "Leedu pealinn on Vilnius." -ForegroundColor Green }
    default { Write-Host "Vigane valik! Palun sisesta number 1 kuni 4." -ForegroundColor Red }
}
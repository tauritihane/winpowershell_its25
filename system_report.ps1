#yl1
$nimi = Read-host "Mis on sinu nimi" #mis nimi
$kordus = Read-Host "Sisestage arv" #mitu korda terviatakse

#yl2
for($i=1 ; $i -le $kordus; $i++)
    {
        Write-Host "Tere, $nimi ($i)" -ForegroundColor green
    }

#yl3
Write-Host "Sinu arvuti nimi on: $env:COMPUTERNAME" -ForegroundColor Cyan
Write-Host "Sa oled sisse logitud kasutaja nimega: $env:USERNAME" -ForegroundColor Cyan
Write-Host "Powershelli versioon on: $($PSVersionTable.PSVersion)" -ForegroundColor Cyan

#yl4
Write-Host "--- 3 Töötavat protsessi ---" -ForegroundColor Cyan
Get-Process | Select-Object -First 3 | Format-Table
Write-Host "--- 3 Teenust ja nende olek ---" -ForegroundColor Yellow
Get-Service | Select-Object -First 3 | Format-Table

#yl5
if($PSVersionTable.PSVersion.Major -lt 5){
    # Kui tingimus on tõene (versioon on 2, 3 või 4)
    Write-Host "HOIATUS: Sinu PowerShell-i versioon on alla 5. Palun uuenda süsteemi!" -ForegroundColor Red
}
else {
    # Kui tingimus on väär (versioon on 5 või uuem)
    Write-Host "Sinu PowerShell-i versioon on sobiv ($($PSVersionTable.PSVersion))." -ForegroundColor Green
}

#yl6
# 1. Kirjutame esimese osa faili (see loob uue faili või kirjutab vana üle)
"--- 3 Töötavat protsessi ---" | Out-File -FilePath "report.txt"
Get-Process | Select-Object -First 3 | Out-File -FilePath "report.txt" -Append

# 2. Lisame teenuste info faili lõppu (kasutame -Append, et mitte kustutada eelnevat)
"`n--- 3 Teenust ja nende olek ---" | Out-File -FilePath "report.txt" -Append
Get-Service | Select-Object -First 3 | Out-File -FilePath "report.txt" -Append

# 3. Teavitame kasutajat konsoolis
Write-Host "Aruanne on edukalt loodud ja salvestatud faili report.txt!" -ForegroundColor Green

#yl7
Write-Host "==========================="
Write-Host "Script finished successfully"
Write-Host "==========================="
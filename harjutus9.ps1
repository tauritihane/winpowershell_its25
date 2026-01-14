# 1. Algatame loenduri nullist
$loendur = 0

do {
    # Kuvame teksti
    Write-Host "Notepad is running"
    
    # Suurendame loendurit ühe võrra
    $loendur++
    
    # Ootame 1 sekundi
    Start-Sleep -Seconds 1

# 2. Tsükkel jätkub NII KAUA KUI vähemalt üks Notepad on lahti
} while (Get-Process notepad -ErrorAction SilentlyContinue)

# 3. Kui kõik Notepadid on suletud, kuvame lõpptulemuse
Write-Host "Lause kuvati kokku $loendur korda." -ForegroundColor Yellow
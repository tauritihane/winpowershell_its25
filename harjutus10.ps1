$loendur = 0

do {
    Write-Host "Notepad is running"
    $loendur++
    Start-Sleep -Seconds 1

# Tsükkel jookseb SENI, KUNI Notepadid on suletud (tulemus on null)
} until (-not (Get-Process notepad -ErrorAction SilentlyContinue))

Write-Host "`nLause kuvati kokku $loendur korda." -ForegroundColor Yellow
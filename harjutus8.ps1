while (Get-Process notepad -ErrorAction SilentlyContinue) {
    Write-Host "Notepad is running..." -ForegroundColor Cyan
    
    # Ootame 1 sekundi enne uut kontrolli, et ekraan ei täituks liiga kiiresti
    Start-Sleep -Seconds 1
}
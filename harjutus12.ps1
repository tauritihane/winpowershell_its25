# Funktsioon käimasolevate teenuste loendamiseks
function countstart {
    $runningCount = (Get-Service | Where-Object {$_.Status -eq "Running"}).Count
    Write-Host "Total services in running state = $runningCount"
}

# Funktsioon peatatud teenuste loendamiseks
function countstop {
    $stoppedCount = (Get-Service | Where-Object {$_.Status -eq "Stopped"}).Count
    Write-Host "Total services in stopped state = $stoppedCount"
}

# Kutsume funktsioonid välja
countstart
countstop
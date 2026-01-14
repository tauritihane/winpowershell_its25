function Show-MainMenu {
    Clear-Host
    Write-Host "Area Calculator" -ForegroundColor Green
    Write-Host "Main Menu" -ForegroundColor Yellow
    Write-Host "`nPlease select the option to perform the respective task" -ForegroundColor Yellow
    Write-Host "`n1: Area of Square" -ForegroundColor Green
    Write-Host "2: Area of Rectangle" -ForegroundColor Green
    Write-Host "3: Area of Circle" -ForegroundColor Green
    Write-Host "4: Area of Triangle" -ForegroundColor Green
    Write-Host "5: Exit" -ForegroundColor Green
}

function Show-NextOptionMenu {
    Write-Host "`nPlease select the next option" -ForegroundColor Yellow
    Write-Host "`n1: Return to Main Menu" -ForegroundColor Green
    Write-Host "2: Exit" -ForegroundColor Green
}

# Põhitsükkel, mis hoiab skripti töös
$runScript = $true
while ($runScript) {
    Show-MainMenu
    $choice = Read-Host "`nEnter your choice"

    if ($choice -eq "5") { 
        $runScript = $false 
        continue 
    }

    Clear-Host
    switch ($choice) {
        "1" {
            Write-Host "Area of Square" -ForegroundColor Green
            [double]$side = Read-Host "`nEnter the side of the square"
            $area = $side * $side
            Write-Host "`nArea of the square :  $area" -ForegroundColor Green
        }
        "2" {
            Write-Host "Area of Rectangle" -ForegroundColor Green
            [double]$length = Read-Host "`nEnter the length"
            [double]$width = Read-Host "Enter the width"
            $area = $length * $width
            Write-Host "`nArea of the rectangle :  $area" -ForegroundColor Green
        }
        "3" {
            Write-Host "Area of Circle" -ForegroundColor Green
            [double]$radius = Read-Host "`nEnter the radius"
            $area = [Math]::PI * ($radius * $radius)
            Write-Host "`nArea of the circle :  $area" -ForegroundColor Green
        }
        "4" {
            Write-Host "Area of Triangle" -ForegroundColor Green
            [double]$base = Read-Host "`nEnter the base"
            [double]$height = Read-Host "Enter the height"
            $area = 0.5 * $base * $height
            Write-Host "`nArea of the triangle :  $area" -ForegroundColor Green
        }
        Default {
            Write-Host "Viga: Vale valik!" -ForegroundColor Red
            Start-Sleep -Seconds 2
            continue
        }
    }

    # "Next Option" loogika (punktid 3 ja 4 sinu juhistes)
    $validNextChoice = $false
    while (-not $validNextChoice) {
        Show-NextOptionMenu
        $nextChoice = Read-Host "`nEnter your choice"

        if ($nextChoice -eq "1") {
            $validNextChoice = $true
            # Naaseb automaatselt peamenüüsse tänu välisele while-tsüklile
        }
        elseif ($nextChoice -eq "2") {
            $validNextChoice = $true
            $runScript = $false
        }
        else {
            Write-Host "`nEnter correct option" -ForegroundColor Red
        }
    }
}
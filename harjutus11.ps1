# 1. Küsime kasutajalt kaks numbrit ja muudame need ujukomaarvudeks [double]
[double]$num1 = Read-Host "Enter first number"
[double]$num2 = Read-Host "Enter second number"

# 2. Kuvame menüü
Write-Host "`nCalculator" -ForegroundColor Green
Write-Host "1: Addition" -ForegroundColor Yellow
Write-Host "2: Subtraction" -ForegroundColor Yellow
Write-Host "3: Division" -ForegroundColor Yellow
Write-Host "4: Multiplication" -ForegroundColor Yellow

# 3. Küsime kasutaja valikut
$choice = Read-Host "`nEnter your choice"

# 4. Teostame arvutuse vastavalt valikule
switch ($choice) {
    "1" { 
        $tulemus = $num1 + $num2
        Write-Host "Sum is : $tulemus" 
    }
    "2" { 
        $tulemus = $num1 - $num2
        Write-Host "Difference is : $tulemus" 
    }
    "3" { 
        if ($num2 -ne 0) {
            $tulemus = $num1 / $num2
            Write-Host "Result is : $tulemus"
        } else {
            Write-Host "Viga: Nulliga ei saa jagada!" -ForegroundColor Red
        }
    }
    "4" { 
        $tulemus = $num1 * $num2
        Write-Host "Product is : $tulemus" 
    }
    Default { Write-Host "Vale valik!" -ForegroundColor Red }
}
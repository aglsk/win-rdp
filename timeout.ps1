$i = 360
do {
    Write-Host "Keeping session alive... $i minutes remaining."
    Start-Sleep -Seconds 60
    $i--
} while ($i -gt 0)

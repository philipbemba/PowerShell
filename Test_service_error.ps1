Get-Service -Name "mpssvc" | Stop-Service 
do { Start-Sleep -Milliseconds 200}
until ((get-service -Name "mpssvc").status -eq 'Stopped')


try {
    Get-Service -Name $service | Stop-Service  -ErrorAction Stop
}
catch {
    Write-Warning $Error[0]
}
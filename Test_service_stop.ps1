Get-Service -Name "ZoomCptService" | Stop-Service 
do { Start-Sleep -Milliseconds 200}
until ((get-service -Name "ZoomCptService").status -eq 'Stopped')
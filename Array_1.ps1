$windowsServices = @('ZoomCptService','hidserv','mpssvc')
foreach ($service in $windowsServices)
{
    try {
        Get-Service -Name $service | Stop-Service  -ErrorAction Stop
        do
        {
            Start-Sleep -Milliseconds 200
        } until ((get-service -Name $service).status -eq 'Stopped')
    }
    catch {
        Write-Warning $Error[0]
    }
}




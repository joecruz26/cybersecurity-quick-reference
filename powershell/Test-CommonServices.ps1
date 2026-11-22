# Check common Windows services without changing their state

Write-Host "=== Common Service Status ===" -ForegroundColor Cyan

$serviceNames = @(
    'Dnscache',
    'Dhcp',
    'EventLog',
    'LanmanWorkstation',
    'Winmgmt',
    'wuauserv'
)

foreach ($name in $serviceNames) {
    $service = Get-Service -Name $name -ErrorAction SilentlyContinue

    if ($null -eq $service) {
        [PSCustomObject]@{
            Service = $name
            Status  = 'Not Found'
            StartType = 'Unknown'
        }
        continue
    }

    $serviceInfo = Get-CimInstance Win32_Service -Filter "Name='$name'" -ErrorAction SilentlyContinue

    [PSCustomObject]@{
        Service   = $service.DisplayName
        Status    = $service.Status
        StartType = $serviceInfo.StartMode
    }
}

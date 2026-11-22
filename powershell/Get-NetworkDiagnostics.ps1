# Network diagnostics quick check
# Run in PowerShell. Some details may require elevated privileges.

Write-Host "=== Network Diagnostics ===" -ForegroundColor Cyan

Write-Host "`nIP Configuration" -ForegroundColor Yellow
Get-NetIPConfiguration | Format-Table InterfaceAlias, IPv4Address, IPv4DefaultGateway, DNSServer -AutoSize

Write-Host "`nDefault Route" -ForegroundColor Yellow
Get-NetRoute -DestinationPrefix "0.0.0.0/0" -ErrorAction SilentlyContinue |
    Sort-Object RouteMetric |
    Format-Table InterfaceAlias, NextHop, RouteMetric -AutoSize

Write-Host "`nDNS Test: microsoft.com" -ForegroundColor Yellow
Resolve-DnsName microsoft.com -ErrorAction Continue

Write-Host "`nConnectivity Test: 1.1.1.1" -ForegroundColor Yellow
Test-NetConnection 1.1.1.1 -InformationLevel Detailed

Write-Host "`nHTTPS Test: microsoft.com" -ForegroundColor Yellow
Test-NetConnection microsoft.com -Port 443 -InformationLevel Detailed

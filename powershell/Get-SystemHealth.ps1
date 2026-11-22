# Basic Windows system health information

Write-Host "=== System Health ===" -ForegroundColor Cyan

$os = Get-CimInstance Win32_OperatingSystem
$computer = Get-CimInstance Win32_ComputerSystem

[PSCustomObject]@{
    ComputerName = $env:COMPUTERNAME
    CurrentUser  = $env:USERNAME
    OS           = $os.Caption
    Version      = $os.Version
    LastBoot     = $os.LastBootUpTime
    MemoryGB     = [math]::Round($computer.TotalPhysicalMemory / 1GB, 2)
}

Write-Host "`nDisk Space" -ForegroundColor Yellow
Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3" |
    Select-Object DeviceID,
        @{Name='SizeGB';Expression={[math]::Round($_.Size / 1GB, 2)}},
        @{Name='FreeGB';Expression={[math]::Round($_.FreeSpace / 1GB, 2)}} |
    Format-Table -AutoSize

Write-Host "`nRecent System Errors" -ForegroundColor Yellow
Get-WinEvent -FilterHashtable @{LogName='System'; Level=2; StartTime=(Get-Date).AddHours(-24)} -MaxEvents 10 -ErrorAction SilentlyContinue |
    Select-Object TimeCreated, Id, ProviderName, Message |
    Format-List

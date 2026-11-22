# PowerShell Troubleshooting Scripts

Small, read-only-oriented PowerShell utilities for common Windows troubleshooting tasks.

## Scripts

### `Get-NetworkDiagnostics.ps1`
Displays IP configuration, the default route, DNS resolution results, and basic network/HTTPS connectivity tests.

### `Get-SystemHealth.ps1`
Displays Windows/system information, local fixed-disk capacity, and up to 10 recent System log errors from the previous 24 hours.

### `Test-CommonServices.ps1`
Reports status and startup mode for several common Windows services without starting or stopping them.

## Usage

Open PowerShell, change to the directory containing the scripts, and run one, for example:

```powershell
.\Get-NetworkDiagnostics.ps1
```

If your environment restricts script execution, follow your organization's approved PowerShell and execution-policy procedures rather than bypassing them.

## Scope and Safety

These scripts are intended for systems you own or are authorized to support. They gather troubleshooting information and do not intentionally change network settings or service state.

# PowerShell Az Modules — Reusable Building Blocks
Modules that wrap Az cmdlets for idempotent operations and clear output.

## Install
```powershell
Import-Module ./Modules/Networking -Force
```

## Example
```powershell
New-BerkeleyAzPublicIp -Name "pip-prod" -ResourceGroup "rg-net" -Sku Standard -AllocationMethod Static
```

## CI
- PSScriptAnalyzer
- Pester smoke tests

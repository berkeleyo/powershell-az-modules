# Usage

## Tagging
```powershell
Import-Module .\src\Tagging\Set-RequiredTags.psm1
Set-RequiredTags -ResourceId "/subscriptions/<sub>/resourceGroups/<rg>/providers/Microsoft.Compute/virtualMachines/vm1" -Tags @{ env="prod"; owner="platform" }
```

## Budgets
```powershell
Import-Module .\src\Budget\New-SubBudget.psm1
New-SubBudget -SubscriptionId "<sub>" -Amount 2000 -Email "alerts@company.com"
```

Run tests:
```powershell
Invoke-Pester .\tests
```

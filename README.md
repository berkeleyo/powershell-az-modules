
# PowerShell Modules for Azure Ops

- `Set-RequiredTags`: merge & apply required tags to any Azure resource IDs
- `New-SubBudget`: create a subscription budget with Azure CLI

## Example
```powershell
Import-Module ./src/Tagging/Set-RequiredTags.psm1
Import-Module ./src/Budget/New-SubBudget.psm1

$ids = az group list --query "[].id" -o tsv
Set-RequiredTags -ResourceIds $ids -Tags @{ Owner='Berkeley'; Environment='Prod' }

New-SubBudget -SubscriptionId <subId> -Amount 500
```

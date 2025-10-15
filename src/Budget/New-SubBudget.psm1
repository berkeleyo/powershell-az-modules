
function New-SubBudget {
  [CmdletBinding()]
  param(
    [Parameter(Mandatory)][string]$SubscriptionId,
    [Parameter(Mandatory)][double]$Amount
  )
  az account set --subscription $SubscriptionId
  az consumption budget create -g 'rg-budgets' -n 'Monthly' --category cost --amount $Amount --time-grain monthly --start-date 2025-01-01 --end-date 2025-12-31 | Out-Null
}
Export-ModuleMember -Function New-SubBudget


function Set-RequiredTags {
  [CmdletBinding()]
  param(
    [Parameter(Mandatory)][string[]]$ResourceIds,
    [hashtable]$Tags = @{ 'CostCenter'='UNKNOWN'; 'Owner'='UNKNOWN'; 'Environment'='Prod' }
  )
  foreach ($id in $ResourceIds) {
    Write-Verbose "Tagging $id"
    $current = az resource show --ids $id --query tags -o json 2>$null | ConvertFrom-Json
    if (-not $current) { $current = @{} }
    $merged = @{} + $current + $Tags
    $json = ($merged | ConvertTo-Json -Compress)
    az resource update --ids $id --set tags="$json" | Out-Null
  }
}
Export-ModuleMember -Function Set-RequiredTags

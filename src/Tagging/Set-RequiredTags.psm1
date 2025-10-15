function Set-RequiredTags {
  [CmdletBinding()]
  param(
    [Parameter(Mandatory)]
    [string[]]$ResourceIds,
    [hashtable]$Tags = @{ 'CostCenter'='UNKNOWN'; 'Owner'='UNKNOWN' }
  )
  foreach ($id in $ResourceIds) {
    Write-Verbose "Tagging $id"
    az resource update --ids $id --set tags="$(ConvertTo-Json $Tags)"
  }
}
Export-ModuleMember -Function Set-RequiredTags

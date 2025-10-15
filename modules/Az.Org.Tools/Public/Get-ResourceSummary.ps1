function Get-ResourceSummary {
    Get-AzResource | Group-Object ResourceType | Select-Object Name,Count
}

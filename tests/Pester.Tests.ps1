
Describe 'Modules load' {
  It 'loads Tagging module' {
    . ./src/Tagging/Set-RequiredTags.psm1
    Get-Command Set-RequiredTags | Should -Not -BeNullOrEmpty
  }
  It 'loads Budget module' {
    . ./src/Budget/New-SubBudget.psm1
    Get-Command New-SubBudget | Should -Not -BeNullOrEmpty
  }
}

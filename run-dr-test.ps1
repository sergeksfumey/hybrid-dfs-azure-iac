# run-dr-test.ps1
# Placeholder for ASR test failover logic

Start-AzRecoveryServicesAsrTestFailoverJob -PrimaryProtectionContainer "DFS-Container" `
  -RecoveryPlanName "DFS-Failover-Plan" `
  -Direction "PrimaryToRecovery" `
  -RecoveryVmCreationOption "Test"

Get-AzRecoveryServicesAsrJob | Sort-Object StartTime -Descending | Select-Object -First 1
# enable-backup.ps1

$resourceGroup = "rg-dfs-hybrid"
$vaultName = "rsv-dfsbackup"
$storageAccountName = "dfsstorage2025"
$location = "westeurope"

# Create Recovery Services Vault
New-AzRecoveryServicesVault -Name $vaultName -ResourceGroupName $resourceGroup -Location $location
Set-AzRecoveryServicesVaultContext -VaultId (Get-AzRecoveryServicesVault -Name $vaultName).ID

# Enable Backup for File Share
$storageAccount = Get-AzStorageAccount -Name $storageAccountName -ResourceGroupName $resourceGroup
Enable-AzRecoveryServicesBackupProtection -WorkloadType AzureFiles -StorageAccount $storageAccount
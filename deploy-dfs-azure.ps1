# deploy-dfs-azure.ps1

# Parameters
$resourceGroup = "rg-dfs-hybrid"
$location = "westeurope"
$storageAccountName = "dfsstorage2025"
$fileShareName = "dfsfileshare"
$syncServiceName = "dfs-sync-service"
$syncGroupName = "dfs-syncgroup"

# Create Resource Group
New-AzResourceGroup -Name $resourceGroup -Location $location

# Create Storage Account
New-AzStorageAccount -ResourceGroupName $resourceGroup `
    -Name $storageAccountName `
    -Location $location `
    -SkuName Premium_LRS `
    -Kind FileStorage

# Create File Share
$storageAccount = Get-AzStorageAccount -ResourceGroupName $resourceGroup -Name $storageAccountName
$ctx = $storageAccount.Context
New-AzStorageShare -Name $fileShareName -Context $ctx

# Create Azure File Sync Service
New-AzStorageSyncService -ResourceGroupName $resourceGroup `
    -Name $syncServiceName -Location $location

# Create Sync Group
New-AzStorageSyncGroup -ResourceGroupName $resourceGroup `
    -StorageSyncServiceName $syncServiceName -Name $syncGroupName
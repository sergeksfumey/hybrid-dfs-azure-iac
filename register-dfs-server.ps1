# register-dfs-server.ps1
# This script must be run on the DFS server after Azure File Sync agent is installed

$resourceGroup = "rg-dfs-hybrid"
$syncServiceName = "dfs-sync-service"

Register-AzStorageSyncServer -ResourceGroupName $resourceGroup -StorageSyncServiceName $syncServiceName
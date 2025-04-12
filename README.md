# Hybrid DFS + Azure File Share IaC Project

This repository contains a set of PowerShell scripts to automate the deployment of a secure and scalable hybrid Distributed File System (DFS) infrastructure using Azure File Share and Azure File Sync.

## 📁 Project Features

- Provision Azure Storage Account and File Share
- Configure Azure File Sync Service and Sync Group
- Register on-prem DFS server with Azure File Sync
- Enable Azure Backup for File Share
- Optional ASR Disaster Recovery test script

## 🛠️ Scripts Overview

| Script | Description |
|--------|-------------|
| `deploy-dfs-azure.ps1` | Deploys the core Azure infrastructure (RG, Storage, File Share, File Sync) |
| `register-dfs-server.ps1` | Registers on-prem DFS server with Azure File Sync (run on server) |
| `enable-backup.ps1` | Sets up Azure Backup for the File Share |
| `run-dr-test.ps1` | Sample script to initiate a DR test failover (ASR) |

## ✅ Prerequisites

- PowerShell 7+
- Azure PowerShell Modules: `Az.Accounts`, `Az.Storage`, `Az.RecoveryServices`, `Az.StorageSync`
- Azure File Sync Agent installed on your DFS Server

## 🚀 Getting Started

```powershell
Connect-AzAccount
.\deploy-dfs-azure.ps1
```

Then run `register-dfs-server.ps1` **on your DFS server**.

---

Licensed under MIT. Customize these scripts to match your environment.
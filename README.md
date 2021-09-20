# azure-batch-workshop
This respository is to provide basic material to run and intrdouction into Azure Batch workshp.
To be able to run the scripts, you need to craete a configuration file called variables.sh within the same directory:

```shell-script
#!/bin/bash

# Configuration variables

# ID of your Azure subscription
subscription_id=
# Name of the resource group
batch_rg="batch-ws-rg"
# Region
region="westeurope"
# Unique batch account name (e.g. batchwsaccount3245353)
batch_account_name=
# Unique storage account name (e.g. batchwastorage3245353)
storage_account_name=
# VNET name
batch_vnet_name="batch-ws-vnet"
# Compute subnet name
compute_subnet_name="compute"
# Unique storage account name for shared Azure Files NFS storage (e.g. batchwsnfsstorage3422435234)
nfs_storage_account_name="batchwsnfssa" # unique
# Name of tha Azure Files fileshare
nfs_share="shared"
# Unique extension for the keyvault name (e.g. kv234)
keyvault_extension=
```
# Fragen fuers nächste Meeting

## Kann man kostenwarnung per bash einrichten?
Siehe Datei 07_run_mpi_job.sh

## Wie stellt man MicrosoftAzureBatch ein?
Wie war mit Rechten, etc?

## Empfohlene Vorgehensweiße um PALM JOB zu starten und auf mehrere Nodes zu starten
Muessen wir erstmal rumspielen und rumtesten, aber da wäre hilfestellung sicher gut;

## Wie greift man über ssh drauf zu? 
War das über public ssh keys? Oder azure? Oder Passwörter?

## Resource Gruppe aus bash löschen?

## Intern: Aufsetzen eigener Vorlage


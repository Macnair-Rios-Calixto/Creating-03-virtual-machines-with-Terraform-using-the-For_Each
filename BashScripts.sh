#!/bin/bash
#Conect and set Subscription Context in Azure
az login
az account set --subscription "xxxxxxxxxxxxxxxxxxxxxxxxx"


#Set Variables for Storage account 
RESOURCE_GROUP_NAME=RG-Terraform
STORAGE_ACCOUNT_NAME=stoprojterraform001
CONTAINER_NAME=container


# Create resource group
az group create --name $RESOURCE_GROUP_NAME --location eastus2

# Create storage account
az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME --sku Standard_LRS --encryption-services blob

# Get storage account key 
ACCOUNT_KEY=$(az storage account keys list --resource-group $RESOURCE_GROUP_NAME --account-name $STORAGE_ACCOUNT_NAME --query '[0].value' -o tsv)

# Create blob container
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME --account-key $ACCOUNT_KEY

# Show details for the purposes of this code
echo "storage_account_name: $STORAGE_ACCOUNT_NAME"
echo "container_name: $CONTAINER_NAME"
echo "access_key: $ACCOUNT_KEY"


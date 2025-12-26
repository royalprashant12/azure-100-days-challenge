#!/bin/bash

# ==============================================================================
# TASK DESCRIPTION:
# 1) Create a new Azure Virtual Machine named 'datacenter-vm' via Azure CLI.
# 2) Image: Ubuntu2204 | Size: Standard_B2s.
# 3) Admin: azureuser | SSH keys: Generated.
# 4) Storage: Standard_LRS | Disk Size: 30GB.
# 5) Verification: Ensure VM is in 'running' state.
# ==============================================================================

# Variables (Updated with your lab's Resource Group)
RG="kml_rg_main-bdbecdd44f1349d1"
VM_NAME="datacenter-vm"
IMAGE="Ubuntu2204"
SIZE="Standard_B2s"
ADMIN_USER="azureuser"

echo "----------------------------------------------------"
echo "Starting migration: Deploying $VM_NAME..."
echo "----------------------------------------------------"

# Create the VM with specified requirements
az vm create \
  --resource-group "$RG" \
  --name "$VM_NAME" \
  --image "$IMAGE" \
  --size "$SIZE" \
  --admin-username "$ADMIN_USER" \
  --generate-ssh-keys \
  --storage-sku Standard_LRS \
  --os-disk-size-gb 30

echo -e "\n----------------------------------------------------"
echo "Deployment command finished. Verifying Status..."
echo "----------------------------------------------------"

# Check if the VM is running
az vm get-instance-view \
  --resource-group "$RG" \
  --name "$VM_NAME" \
  --query "instanceView.statuses[?code=='PowerState/running'].displayStatus" \
  --output table

echo "----------------------------------------------------"
#!/bin/bash

# ==============================================================================
# TASK DESCRIPTION:
# 1) Create an Azure Virtual Network named 'datacenter-vnet'.
# 2) Region: East US.
# 3) IPv4 CIDR: 10.0.0.0/16.
# 4) Add default subnet (10.0.0.0/24).
# 5) Verify VNet creation.
# ==============================================================================

# Variables (use same Resource Group as lab)
RG="kml_rg_main-bdbecdd44f1349d1"
LOCATION="eastus"
VNET_NAME="datacenter-vnet"
ADDRESS_PREFIX="10.0.0.0/16"
SUBNET_NAME="default"
SUBNET_PREFIX="10.0.0.0/24"

echo "----------------------------------------------------"
echo "Starting network build: Creating $VNET_NAME..."
echo "----------------------------------------------------"

# Create the Virtual Network
az network vnet create \
  --resource-group "$RG" \
  --name "$VNET_NAME" \
  --location "$LOCATION" \
  --address-prefix "$ADDRESS_PREFIX" \
  --subnet-name "$SUBNET_NAME" \
  --subnet-prefix "$SUBNET_PREFIX"

echo -e "\n----------------------------------------------------"
echo "Deployment finished. Validating VNet..."
echo "----------------------------------------------------"

# Verify VNet exists
az network vnet show \
  --resource-group "$RG" \
  --name "$VNET_NAME" \
  --query "{Name:name, Location:location, AddressSpace:addressSpace.addressPrefixes}" \
  --output table

echo "----------------------------------------------------"
echo "VNet setup complete."
echo "----------------------------------------------------"

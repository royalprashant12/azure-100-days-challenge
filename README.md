# ☁️ 100 Days of Azure Challenge

Welcome to my **100 Days of Azure Challenge**! This repository is a dedicated log of my journey to master Microsoft Azure through daily hands-on practice, documentation, and cloud architecture projects.

## 🚀 Goals

- Master **Azure CLI** and **PowerShell** for resource management.
- Deep dive into **Compute, Networking, and Storage**.
- Learn **DevOps** integration with Azure (CI/CD pipelines).
- Prepare for Azure Certifications (AZ-900 / AZ-104).

---

## 📅 Daily Progress Tracker

|  Day   | Task Title                  | Key Services Used               |     Documentation     |
| :----: | :-------------------------- | :------------------------------ | :-------------------: |
| **01** | SSH Key Creation & Setup    | `ssh-keygen`, Linux             | [View Notes](./Day01) |
| **02** | Create a VM via Portal      | Azure VM, VNet, Security Groups | [View Notes](./Day02) |
| **03** | VM Deployment via Azure CLI | Azure CLI, Bash, Ubuntu 22.04   | [View Notes](./Day03) |
| **04** | _Upcoming..._               | --                              |          --           |

---

## 🛠️ Key Tasks Summary

### Day 1: SSH Key Creation and Setup

- **Objective:** Generate secure access keys for cloud instances.
- **Tools:** `ssh-keygen`, OpenSSH.
- **Outcome:** Created public/private key pairs to enable passwordless login for future VMs.

### Day 2: Create an Azure Virtual Machine (Portal)

- **Objective:** Understand the GUI workflow for resource creation.
- **Tools:** Azure Management Portal.
- **Outcome:** Configured a Standard_B2s instance with public IP and firewall rules.

### Day 3: Create VM using Azure CLI 💻

- **Objective:** Automate infrastructure deployment via command line.
- **Key Command:**
  ```bash
  az vm create \
    --resource-group myRG \
    --name datacenter-vm \
    --image Ubuntu2204 \
    --size Standard_B2s \
    --admin-username azureuser \
    --generate-ssh-keys \
    --storage-sku Standard_LRS \
    --os-disk-size-gb 30
  ```
- **Outcome:** Successfully deployed a 30GB Ubuntu VM using a single script.

---

## 🧰 Tools & Technologies

![Azure](https://img.shields.io/badge/azure-%230072C6.svg?style=for-the-badge&logo=microsoftazure&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Bash](https://img.shields.io/badge/bash-%234EAA25.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Git](https://img.shields.io/badge/git-%23F05032.svg?style=for-the-badge&logo=git&logoColor=white)

## ✍️ Author

**Prashant Kumar**

- LinkedIn: [linkedin.com/in/prashantroyal12](https://linkedin.com/in/prashantroyal12)
- GitHub: [@royalprashant12](https://github.com/royalprashant12)

---

_Follow my progress! Feel free to star ⭐ this repo if you find the notes helpful._

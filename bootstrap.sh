#!/usr/bin/env bash

apt-get update
apt-get install -y build-essential

# Some post-provisioning stats
echo -e "\n\n\n======== PROVISION COMPLETE ========"

echo -e "\nProvision runtime: $SECONDS seconds\n\n"

echo -e "Guest VM Network Interfaces"
echo -e "--------------------------------"
ip -f inet -o addr | awk 'gsub("/.*$", "")'

echo "Provisioning Complete!"

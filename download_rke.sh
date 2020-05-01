#!/bin/bash
latest=$(curl -s https://api.github.com/repos/rancher/rke/releases/latest | grep "browser_download_url" | grep "linux-amd64" | cut -d : -f 2,3 | tr -d \")
echo $latest

wget -O rke $latest 
chmod +x rke


helm=$(curl -s https://api.github.com/repos/helm/helm/releases/latest | grep "browser_download_url" | grep "linux-amd64" | cut -d : -f 2,3 | tr -d \")

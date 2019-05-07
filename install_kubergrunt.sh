#!/usr/bin/env bash

curl -s https://api.github.com/repos/gruntwork-io/kubergrunt/releases/latest \
| grep "browser_download_url.*linux_amd64" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi -

mv kubergrunt_linux_amd64 kubergrunt
chmod +x kubergrunt

#!/usr/bin/env bash
set -euo pipefail

BASE_URL="https://mdsameer2924.github.io/fnpath-apt"

sudo curl -fsSLo /usr/share/keyrings/fnpath-archive-keyring.gpg "${BASE_URL}/fnpath-archive-keyring.gpg"
sudo curl -fsSLo /etc/apt/sources.list.d/fnpath.sources "${BASE_URL}/fnpath.sources"

sudo apt-get update
sudo apt-get install -y fnpath

#!/bin/bash

# Is task already installed?
which task
rc=$?

set -e 
if [ 0 -ne $rc ]; then
    sudo bash -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /usr/local/bin v3.38.0 
fi

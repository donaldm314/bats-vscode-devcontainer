#!/bin/bash

packages="openssh-client sudo git bats"

apt update && \
    apt upgrade -y && \
    apt install ${packages} -y

exit

if [ 0 -ne $rc ]; then
    sudo bash -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /usr/local/bin v3.38.0 
fi

#!/bin/bash

cat <<EOF > /etc/wsl.conf
[automount]
options = metadata
EOF
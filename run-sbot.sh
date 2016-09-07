#!/bin/bash
. /root/.nvm/nvm.sh
if [ -z "$PATCHWORK_HOSTNAME" ]; then
    echo "Need to set \$PATCHWORK_HOSTNAME"
    exit 1
fi
node_modules/.bin/sbot server --host $PATCHWORK_HOSTNAME

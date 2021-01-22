#!/bin/bash

set -eu

echo "Build wazuh agent ${WAZUH_VERSION} ..."
git clone https://github.com/wazuh/wazuh.git -b ${WAZUH_VERSION} --depth 1
mv debug.patch wazuh/
cd wazuh/
patch -p1 < debug.patch
cd src/
make deps
make TARGET=agent
mv wazuh-* /dist
[ -e "ossec-agentd" ] && mv ossec-* /dist

#!/bin/bash

# https://explainshell.com/explain?cmd=set+-euxo%20pipefail
set -euxo pipefail
export LHCI_BUILD_CONTEXT__CURRENT_HASH=$(head -n 4096 /dev/urandom | openssl sha1 | sed 's/(stdin)=//g')
export LHCI_BUILD_CONTEXT__COMMIT_TIME=$(date +%Y-%m-%dT%H:%M:%S%z)
export LHCI_BUILD_CONTEXT__CURRENT_BRANCH=master
export LHCI_BUILD_CONTEXT__COMMIT_MESSAGE="Periodic run"
export LHCI_BUILD_CONTEXT__AUTHOR="Liccy Fuentes <liccy.fuentes@daily-harvest.com>"
export LHCI_BUILD_CONTEXT__AVATAR_URL="https://lh3.googleusercontent.com/-cGaW4g3_mNA/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucnAeYugGyGDLcBVua-iOVSnIRpIjw/photo.jpg?sz=46"
lhci autorun

#!/bin/bash
#
#
#
VERSION=v1.9.1
ARCH=linux-amd64


curl -LO https://github.com/vmware-tanzu/velero/releases/download/${VERSION}/velero-${VERSION}-${ARCH}.tar.gz
tar -zxvf velero-${VERSION}-${ARCH}.tar.gz velero-${VERSION}-${ARCH}/velero
mv velero-${VERSION}-${ARCH}/velero .
rm -rf velero-${VERSION}-${ARCH}*
echo "Execute \"docker build -f Dockerfile -t velero:$VERSION .\""

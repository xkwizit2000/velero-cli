# Usage example
#
# docker run --rm \
#   --it \
#   -v path-to-k8s-config:/root/.kube/config 
#   velero get backups
#

FROM alpine:latest
LABEL maintainer "JT Thornton <john.e.thornton#gmail.com>"

COPY  velero /bin/velero

ENTRYPOINT [ "velero" ]

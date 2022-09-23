# Usage example
#
# docker run --rm \
#   --it \
#   -v path-to-k8s-config:/root/.kube/config 
#   velero get backups

FROM alpine:latest
LABEL maintainer "JT Thornton <john.e.thornton#gmail.com>"

COPY  velero-v1.9.1-linux-amd64 /use/bin/velero

ENTRYPOINT [ "velero" ]


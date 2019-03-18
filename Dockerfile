FROM alpine:latest

LABEL maintainer=relief.melone@gmail.com
ENV KUBECONFIG "~/.kube/config"

# Add Curl
RUN apk add --no-cache curl

USER root
# Install OC Client Tools
RUN curl -sL https://github.com/openshift/origin/releases/download/v3.10.0/openshift-origin-client-tools-v3.10.0-dd10d17-linux-64bit.tar.gz > oc-tools.tar.gz && \
    tar -xf oc-tools.tar.gz \
    cp ./openshift-origin-client-tools-v3.10.0-dd10d17-linux-64bit/oc /bin/oc

USER 1001



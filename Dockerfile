FROM ebits/openshift-client:latest

LABEL maintainer=relief.melone@gmail.com
ENV KUBECONFIG "/home/rm-os/.kube/config"

# Install OC Client Tools
RUN mkdir /home/rm-os && \
    chgrp root -R /home/rm-os && \
    chmod 770 /home/rm-os

USER 1001



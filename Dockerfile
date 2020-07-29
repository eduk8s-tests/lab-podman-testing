FROM quay.io/eduk8s/base-environment:200729.065116.d64688f

COPY etc/sudoers.d/. /etc/sudoers.d/

COPY --chown=1001:0 . /home/eduk8s/

RUN mv /home/eduk8s/workshop /opt/workshop && \
    rm -rf /home/eduk8s/etc

RUN fix-permissions /home/eduk8s

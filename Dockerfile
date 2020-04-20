FROM quay.io/eduk8s/workshop-dashboard:master

COPY etc/sudoers.d/. /etc/sudoers.d/

COPY --chown=1001:0 . /home/eduk8s/

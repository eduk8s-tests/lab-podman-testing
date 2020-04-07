FROM quay.io/eduk8s/workshop-dashboard:master

USER root

RUN HOME=/root && \
    INSTALL_PKGS="buildah podman podman-docker runc fuse3 slirp4netns" && \
    dnf -y --setopt=tsflags=nodocs install $INSTALL_PKGS && \
    dnf -y clean all --enablerepo='*'

RUN sed -i.bak -e 's/# *mount_program =/mount_program = /' \
      /etc/containers/storage.conf

RUN sed -i.bak -e 's/cgroup_manager = "systemd"/cgroup_manager = "cgroupfs"/' \
      /usr/share/containers/libpod.conf

RUN sed -i.bak -e 's/# *events_logger = "journald"/events_logger = "file"/' \
      /usr/share/containers/libpod.conf

COPY sudoers.d/ /etc/sudoers.d/

USER 1001

ENV BUILDAH_ISOLATION=chroot

ENV REGISTRY_AUTH_FILE=/home/eduk8s/.docker/config.json

COPY --chown=1001:0 . /home/eduk8s/

RUN mkdir -p /home/eduk8s/.docker && \
    chmod g+w /home/eduk8s/.docker

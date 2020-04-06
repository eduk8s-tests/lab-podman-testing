FROM quay.io/eduk8s/workshop-dashboard:master

SER root

RUN HOME=/root && \
    INSTALL_PKGS="buildah podman runc fuse3 slirp4netns" && \
    dnf -y --setopt=tsflags=nodocs install $INSTALL_PKGS && \
    dnf -y clean all --enablerepo='*'

RUN sed -i.bak -e 's/# *mount_program =/mount_program = /' \
      /etc/containers/storage.conf

RUN sed -i.bak -e 's/cgroup_manager = "systemd"/cgroup_manager = "cgroupfs"/' \
      /usr/share/containers/libpod.conf

RUN sed -i.bak -e 's/# *events_logger = "journald"/events_logger = "file"/' \
      /usr/share/containers/libpod.conf

COPY sudoers.d/ /etc/sudoers.d/

ENV BUILDAH_ISOLATION=chroot

USER 1001

COPY --chown=1001:0 . /home/eduk8s/

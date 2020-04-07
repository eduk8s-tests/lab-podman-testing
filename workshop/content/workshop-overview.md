This workshop provides an environment for testing support for ``podman`` under the workshop environment. In addition to ``podman``, the ``buildah`` and ``skopeo`` command line tools are available.

To facilitate deployment to the Kubernetes cluster of any container images which are built, an image registry is provided for the session.

The host name and credentials for the image registry are:

**Hostname**: %REGISTRY_HOST%
**Password**: %REGISTRY_PASSWORD%

Images can be pushed to the image from the terminal provided by the workshop session, or from your local computer. The ``REGISTRY_HOST`` and ``REGISTRY_USERNAME`` environment variables are set with these values if you need to use them from the terminal.

If using the terminal provided by the workshop, you do not need to login as credentials are already cached in the ``.docker/config.json`` file of the terminal session.

The remainder of this workshop provides steps to test pulling, building and pushing images, and deploying the image to the Kubernetes cluster.

In order to be able to deploy the image to the Kubernetes cluster it needs to be hosted in an image registry from which Kubernetes can pull down the image.

For this workshop environment an image registry has been provided. To be able to push the image to the image registry, we need to tag the image with name including the name of the image registry. To do this run:

```execute
podman tag hello %REGISTRY_HOST%/hello:latest
```

The image registry is a private image registry, but the client credentials have already been configured. You can therefore push the image to the image registry by running:

```execute
podman push %REGISTRY_HOST%/hello:latest
```

If you want to inspect the uploaded image from its location in the image registry, you can use ``skopeo``.

```execute
skopeo inspect docker://%REGISTRY_HOST%/hello:latest
```

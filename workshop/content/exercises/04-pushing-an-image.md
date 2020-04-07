```execute
podman tag hello %REGISTRY_HOST%/hello:latest
```

```execute
podman push %REGISTRY_HOST%/hello:latest
```

```execute
skopeo inspect docker://%REGISTRY_HOST%/hello:latest
```

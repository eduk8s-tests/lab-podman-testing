```execute-1
cd exercises
```

```execute-1
podman build -t hello .
```

```execute-1
podman run --rm -p 8080:8080 hello
```

```execute-2
curl localhost:8080
```

```execute-1
<ctrl-c>
```

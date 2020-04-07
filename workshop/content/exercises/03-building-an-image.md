To build a new container image, change to the ``exercises`` subdirectory.

```execute-1
cd exercises
```

List the files in the directory.

```execute-1
ls -las
```

You will see a ``Dockerfile``. This will be used as input to build the container image. The application in the directory is a small Python web application.

To build the container image, run:

```execute-1
podman build -t hello .
```

The name given to the image is ``hello``.

To start the web application using the container image run:

```execute-1
podman run --rm -p 8080:8080 hello
```

The port 8080 for the web application has been exposed, so to test access run:

```execute-2
curl localhost:8080
```

To stop the running container interrupt the application.

```execute-1
<ctrl-c>
```

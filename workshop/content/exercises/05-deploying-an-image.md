With the image uploaded to the image registry, before we can create a deployment in Kubernetes, we first need to create an image pull secret which contains the credentials for accessing the image registry. To do this run:

```execute
kubectl create secret generic registry-credentials --from-file=.dockerconfigjson=$HOME/.docker/config.json --type=kubernetes.io/dockerconfigjson
```

The image can then be deployed by running:

```execute
kubectl apply -f deployment.yaml
```

The deployment has been set up in advance to reference the secret we just created with the registry credentials.

To monitor the deployment of the image run:

```execute
kubectl rollout status deployment/hello
```

Once the deployment has completed, test access to the web application by running:

```execute
curl http://hello-{{session_namespace}}.{{ingress_domain}}
```

This time access to the web application is via the external ingress which was setup by the deployment.

To delete the deployment when done, you can run:

```execute
kubectl delete -f deployment.yaml
```

```execute
kubectl create secret generic registry-credentials --from-file=.dockerconfigjson=$HOME/.docker/config.json --type=kubernetes.io/dockerconfigjson
```

```execute
kubectl apply -f deployment.yaml
```

```execute
kubectl rollout status deployment/hello
```

```execute
curl http://hello-%session_namespace%.%ingress_domain%
```

```execute
kubectl delete -f deployment.yaml
```

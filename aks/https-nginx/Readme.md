- Craete service account:

``` bash
kubectl create -f helm-rbac.yaml
```


- Configure Helm

``` bash
helm init \
--service-account tiller \
--tiller-image gcr.azk8s.cn/kubernetes-helm/tiller:v2.14.0 
```

- Reset Helm 

``` bash 
helm reset --force
```


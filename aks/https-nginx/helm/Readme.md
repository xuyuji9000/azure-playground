- Craete service account:

``` bash
kubectl create -f helm-rbac.yaml
```


- Configure Helm

``` bash
# Azure
helm init --upgrade \
--service-account tiller \
--tiller-image gcr.azk8s.cn/kubernetes-helm/tiller:v2.14.2 \
--stable-repo-url https://mirror.azure.cn/kubernetes/charts/
# Alicloud
helm init --upgrade \
--service-account tiller \
-i registry.cn-hangzhou.aliyuncs.com/google_containers/tiller:v2.14.2 \
--stable-repo-url https://kubernetes.oss-cn-hangzhou.aliyuncs.com/charts
```

- Reset Helm 

``` bash 
helm reset --force
```


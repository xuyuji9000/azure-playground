- Create resource group

``` bash
az group create --name testkx-k8s --location chinaeast2
```

- Create k8s cluster 

``` bash
az aks create \
--resource-group testkx-k8s \
--name testkx-k8s \
--node-count 1 \
--enable-addons monitoring
```

- Get cluster credential

``` bash
az aks get-credentials \
--resource-group testkx-k8s \
--name testkx-k8s
```
- Create resource group

``` bash
az group create --name testkx-k8s --location chinaeast2
```

- Create k8s cluster 

``` bash
az aks create \
--resource-group testkx-k8s \
--name testkx-k8s \
--node-count 1 \
--enable-addons monitoring
```

- Get cluster credential

``` bash
az aks get-credentials \
--resource-group testkx-k8s \
--name testkx-k8s
```

- Create vanilla nginx service(with https):

``` bash
kubectl create -f ./nginx
```

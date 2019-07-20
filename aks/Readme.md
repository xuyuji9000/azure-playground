- Create resource group

``` bash
az group create --name testkx-k8s --location chinaeast2
```

- Create k8s cluster 

``` bash
RESOURCE_GROUP=testkx-k8s
NAME=testkx-k8s
VERSION=1.14.0
az aks create \
--resource-group ${RESOURCE_GROUP} \
--name ${NAME} \
--node-count 1 \
--enable-addons monitoring \
--kubernetes-version ${VERSION}
```

- Delete k8s cluster

``` bash
az aks delete \
--resource-group testkx-k8s \
--name testkx-k8s
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

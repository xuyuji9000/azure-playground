- Create static public IP

``` bash
# RESOURCE_GROUP=MC_myResourceGroup_myAKSCluster_eastus
# Can not create Standard sku for aks, still under preview
RESOURCE_GROUP=MC_testkx-k8s_testkx-k8s_chinaeast2
az network public-ip create \
--resource-group $RESOURCE_GROUP \
--name testkx-k8s \
--dns-name testkx-k8s \
--allocation-method static
```

- Generate https cert

``` bash
certbot --manual \
--preferred-challenges dns \
--config-dir ./cert/config \
--work-dir ./cert/work \
--logs-dir ./cert/logs \
-d *.yogiman.cn \
certonly
```

- Create secret

``` bash
kubectl create secret tls aks-ingress-tls \
--key cert/config/archive/yogiman.cn/privkey1.pem \
--cert cert/config/archive/yogiman.cn/fullchain1.pem
```

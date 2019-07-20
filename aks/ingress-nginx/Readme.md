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


- Apply mandadtory:

``` bash
cat 2_mandatory.yaml | kubectl apply -f -
```

- Apply loadbalancer with parameter

``` bash
#!/bin/bash

# sample value for your variables
PUBLIC_IP="139.217.222.146"

# read the yml template from a file and substitute the string 
# {{MYVARNAME}} with the value of the MYVARVALUE variable
template=`cat "3_cloud-generic.yaml" | sed "s/{{PUBLIC_IP}}/$PUBLIC_IP/g"`

# apply the yml with the substituted value
echo "$template" | kubectl apply -f -
```
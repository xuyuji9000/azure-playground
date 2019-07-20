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

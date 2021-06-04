This folder contains learning about Virtual Network.



1. Checkout the current account before deployment

``` shell 
az account list
```

2. Prepare resource group

``` shell
az group create --location 'southeastasia' \
--name 'myRG'
```

3. Build ARM template from Bicep script

```  shell
bicepFile="./main.bicep"
az bicep build --file ${bicepFile}
```

4. Deploy with resource group scope

``` shell
az deployment group create --resource-group myRG \
--template-file ./main.bicep \
--parameters virtualNetworkName=vn1
```

> List deployments: `az deployment group list -g myRG` 
> Export deployment template: `az deployment group export -g myRG -n main` 

5. Delete resource group

``` shell
az group delete -n myRG
```

> Get location info:
>
> `az account list-locations --query [].name|grep asia`

# References

1. [Learn everything about the next generation of ARM Templates | OD340](https://youtu.be/sc1kJfcRQgY?t=701)

    > Watch this video to learn basics of Bicep.

    > From **t=701** to **t=1568** contanis the live demo 
    > - `t=701`: Beginning of demo
    > - `t=1054` : Create subscription scope bicep file

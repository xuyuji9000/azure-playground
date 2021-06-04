This folder contains VPN Gateway learning.


1. Checkout the current account before deployment

``` shell 
az account list
```

2. Build ARM template from Bicep script

```  shell
bicepFile="./main.bicep"
az bicep build --file ${bicepFile}
```

3. Deploy the with subscription scope

``` shell
bicepFile="./main.json"

az deployment sub create \
--template-file ${bicepFile} \
--location 'southeastasia' \
--confirm-with-what-if
```

> Get location info:
>
> `az account list-locations --query [].name|grep asia`


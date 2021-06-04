This folder contains learning about Virtual Network.



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
bicepFile="./main.bicep"

az deployment sub create \
--template-file ${bicepFile} \
--location 'southeastasia' \
--confirm-with-what-if
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

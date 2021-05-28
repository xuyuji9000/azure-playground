This folder document the learning about deploying AKS with Bicep script.

1. Checkout the current account before deployment

``` shell 
az account list
```

2. Build ARM template from Bicep script

```  shell
bicepFile="./main.bicep"
az bicep build --file ${bicepFile}
```

3. Deploy the with Bicep script

``` shell
bicepFile="./main.bicep"

az deployment group create \
  --name firstbicep \
  --resource-group test-k8s \
  --template-file $bicepFile
```

# References

1. [Learn everything about the next generation of ARM Templates | OD340](https://youtu.be/sc1kJfcRQgY?t=701)

    > Watch this video to learn basics of Bicep.

    > From *t=701* to *t=1568* contanis the live demo 

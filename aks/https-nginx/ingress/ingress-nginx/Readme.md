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
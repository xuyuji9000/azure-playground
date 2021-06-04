targetScope = 'subscription'

resource rg 'Microsoft.Resources/resourceGroups@2021-01-01' = {
    name: 'test-k8s'
    location: deployment().location
}


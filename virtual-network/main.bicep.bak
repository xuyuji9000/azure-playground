targetScope = 'subscription'

resource rg 'Microsoft.Resources/resourceGroups@2021-01-01' = {
    name: 'test-vn'
    location: deployment().location
}

module vnDeploy './virtual-network.bicep' = {
    name: 'vnDeploy'
    scope: rg
    params: {
        virtualNetworkName: 'vn-1'
    }
}
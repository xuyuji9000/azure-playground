param virtualNetworkName string

resource vn 'Microsoft.Network/virtualNetworks@2020-07-01' = {
    name: virtualNetworkName
    location: resourceGroup().location
    properties: {
        addressSpace: {
            addressPrefixes: [
                '10.0.0.0/16'
            ]
        }
        subnets: [
            {
                name: 'subnet1'
                properties: {
                    addressPrefix: '10.0.0.0/24'
                }
            }
        ]
    }
}

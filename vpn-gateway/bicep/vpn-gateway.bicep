resource vpn-gateway 'Microsoft.Network/virtualNetworkGateways@2020-07-01' = {
    name: 'test-vpn'
    location: deployment().location
}
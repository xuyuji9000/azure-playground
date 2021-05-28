param clusterName string = 'test-k8s'
param location string = resourceGroup().location
param dnsPrefix string = '${clusterName}-dns'
param osDiskSizeGB int = 30
param agentCount int = 3
param vmSize string = 'Standard_DS2_v2'
param osType string = 'Linux'

resource aks 'Microsoft.ContainerService/managedClusters@2021-03-01' = {
    name: clusterName
    location: location
    properties: {
        dnsPrefix: dnsPrefix
        agentPoolProfiles: [
            {
            name: 'agentpool'
            osDiskSizeGB: osDiskSizeGB
            count: agentCount
            vmSize: vmSize
            osType: osType
            osDiskType: 'Managed'
            mode: 'System'
            }
        ]
    }
    identity: {
        type: 'SystemAssigned'
    }
}


// output controlPlaneFQDN string = aks.fqdn

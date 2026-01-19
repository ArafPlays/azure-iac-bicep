param name string
param location string
param addressPrefixes array
param subnets array

resource vnet 'Microsoft.Network/virtualNetworks@2023-09-01' = {
  name: name
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: addressPrefixes
    }
    subnets: [for s in subnets:{
        name: s.subnetName
        properties: {
          addressPrefix: s.subnetPrefix
        }
      }
    ]
  }
}

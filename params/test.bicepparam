using '../main.bicep'

// default location
param location = 'eastus'

param vnet = {
  name:'vnet-test-eus'
  addressPrefixes:['10.0.0.0/16','172.16.0.0/16']
  subnets:[
    {
      subnetName: 'subnet-1'
      subnetPrefix: '10.0.1.0/24'
    }
    {
      subnetName: 'subnet-2'
      subnetPrefix: '10.0.2.0/24'
    }
  ]
}

param storageAccount = {
  name:'storageaccx02329'
  kind: 'storageV2'
  redundancy: 'Standard_LRS'
}

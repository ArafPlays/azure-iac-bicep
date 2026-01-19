param location string
param vnet object
param storageAccount object

module vnetmodule 'modules/1-vnet-subnets.bicep'={
  params: {
    name:vnet.name
    location:location
    addressPrefixes:vnet.addressPrefixes
    subnets:vnet.subnets
  }
}

module storagemodule 'modules/2-storage.bicep'={
  params:{
    name: storageAccount.name
    location:location
    kind:storageAccount.kind
    redundancy:storageAccount.redundancy
  }
}

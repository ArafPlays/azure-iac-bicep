param name string
param location string
param kind string
param redundancy string

resource storageAcct 'Microsoft.Storage/storageAccounts@2025-06-01' = {
  name: name
  location: location
  sku: {
    name: redundancy
  }
  kind: kind
}

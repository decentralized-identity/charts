# uni-resolver

![Version: 0.4.0](https://img.shields.io/badge/Version-0.4.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v0.3.1+master](https://img.shields.io/badge/AppVersion-v0.3.1+master-informational?style=flat-square)

A Helm chart for Kubernetes

## Quick Start

Add the following part to your `values.yaml` and replace the `host` with your favourite host where it should be reachable.

We are using a service call [nip.io](https://nip.io/)

```yaml
uni-resolver-web:
  ingress:
    enabled: true
    hosts:
      - host: uni-resolver.192-168-1-250.nip.io 
        paths: 
          - path: "/"
    tls:
      - hosts:
        -  uni-resolver.192-168-1-250.nip.io 
```

Afterwards start a deployment with the following command:

```sh
helm install uni-resolver .
```



## Requirements

| Repository | Name | Version |
|------------|------|---------|
|  | ace-did-driver | 0.1.0 |
|  | bba-did-driver | 0.1.0 |
|  | dock-did-driver | 0.1.0 |
|  | driver-did-abt | 0.1.0 |
|  | driver-did-bid | 0.1.0 |
|  | driver-did-btcr | 0.1.0 |
|  | driver-did-ccp | 0.1.0 |
|  | driver-did-cy | 0.1.0 |
|  | driver-did-erc725 | 0.1.0 |
|  | driver-did-factom | 0.1.0 |
|  | driver-did-icon | 0.1.0 |
|  | driver-did-ion | 0.1.0 |
|  | driver-did-key | 0.1.1 |
|  | driver-did-mpg | 0.1.0 |
|  | driver-did-sov | 0.1.0 |
|  | driver-did-stack | 0.1.0 |
|  | driver-did-trust | 0.1.0 |
|  | driver-did-trustbloc | 0.1.0 |
|  | driver-did-vaa | 0.1.0 |
|  | driver-dns | 0.1.0 |
|  | evan-did-driver | 0.1.0 |
|  | gataca-did-resolver-driver | 0.1.0 |
|  | hacera-did-driver | 0.1.0 |
|  | jolocom-did-driver | 0.1.0 |
|  | kilt-did-driver | 0.1.0 |
|  | ontid-driver | 0.1.0 |
|  | schema-registry-did-resolver | 0.1.0 |
|  | seraph-id-did-driver | 0.1.0 |
|  | tsjs-did-sirius-id-driver | 0.1.0 |
|  | uni-resolver-did-v1-driver | 0.1.0 |
|  | uni-resolver-driver-did-echo | 0.1.0 |
|  | uni-resolver-driver-did-io | 0.1.0 |
|  | uni-resolver-driver-did-uport | 0.1.0 |
|  | uni-resolver-web | 0.1.0 |
|  | work-did-driver | 0.1.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| ace-did-driver | string | `nil` |  |
| bba-did-driver | string | `nil` |  |
| dock-did-driver.imagePullSecrets[0].name | string | `"harborpull"` |  |
| driver-did-abt | string | `nil` |  |
| driver-did-bid | string | `nil` |  |
| driver-did-btcr | string | `nil` |  |
| driver-did-ccp | string | `nil` |  |
| driver-did-cy | string | `nil` |  |
| driver-did-erc725 | string | `nil` |  |
| driver-did-factom | string | `nil` |  |
| driver-did-icon | string | `nil` |  |
| driver-did-ion | string | `nil` |  |
| driver-did-key | string | `nil` |  |
| driver-did-mpg | string | `nil` |  |
| driver-did-sov | string | `nil` |  |
| driver-did-stack | string | `nil` |  |
| driver-did-trust | string | `nil` |  |
| driver-did-trustbloc | string | `nil` |  |
| driver-did-vaa.enabled | bool | `false` |  |
| driver-dns | string | `nil` |  |
| driverDidKey.affinity | object | `{}` |  |
| driverDidKey.fullnameOverride | string | `"driver-did-key"` |  |
| driverDidKey.nameOverride | string | `"driver-did-key"` |  |
| driverDidKey.nodeSelector | object | `{}` |  |
| driverDidKey.podSecurityContext | object | `{}` |  |
| driverDidKey.replicaCount | int | `1` |  |
| driverDidKey.resources.requests.cpu | string | `"100m"` |  |
| driverDidKey.resources.requests.memory | string | `"128Mi"` |  |
| driverDidKey.securityContext | object | `{}` |  |
| driverDidKey.service.port | int | `8080` |  |
| driverDidKey.service.type | string | `"ClusterIP"` |  |
| driverDidKey.tolerations | list | `[]` |  |
| driverDidSov.affinity | object | `{}` |  |
| driverDidSov.env.uniresolverDriverDidSovLibIndyPath | string | `""` |  |
| driverDidSov.env.uniresolverDriverDidSovPoolConfigs | string | `"_;./sovrin/mainnet.txn;staging;./sovrin/stagingnet.txn;builder;./sovrin/buildernet.txn;danube;./sovrin/danube.txn"` |  |
| driverDidSov.env.uniresolverDriverDidSovPoolVersions | string | `"_;2;staging;2;builder;2;danube;2"` |  |
| driverDidSov.env.uniresolverDriverDidSovWalletName | string | `"default"` |  |
| driverDidSov.fullnameOverride | string | `"driver-did-sov"` |  |
| driverDidSov.nameOverride | string | `"driver-did-sov"` |  |
| driverDidSov.nodeSelector | object | `{}` |  |
| driverDidSov.podSecurityContext | object | `{}` |  |
| driverDidSov.replicaCount | int | `1` |  |
| driverDidSov.resources.requests.cpu | string | `"100m"` |  |
| driverDidSov.resources.requests.memory | string | `"128Mi"` |  |
| driverDidSov.securityContext | object | `{}` |  |
| driverDidSov.service.port | int | `8080` |  |
| driverDidSov.service.type | string | `"ClusterIP"` |  |
| driverDidSov.tolerations | list | `[]` |  |
| driverDns.affinity | object | `{}` |  |
| driverDns.env.uniresolverDriverDnsDnsServers | string | `""` |  |
| driverDns.fullnameOverride | string | `"driver-dns"` |  |
| driverDns.nameOverride | string | `"driver-dns"` |  |
| driverDns.nodeSelector | object | `{}` |  |
| driverDns.podSecurityContext | object | `{}` |  |
| driverDns.replicaCount | int | `1` |  |
| driverDns.resources.requests.cpu | string | `"100m"` |  |
| driverDns.resources.requests.memory | string | `"128Mi"` |  |
| driverDns.securityContext | object | `{}` |  |
| driverDns.service.port | int | `8080` |  |
| driverDns.service.type | string | `"ClusterIP"` |  |
| driverDns.tolerations | list | `[]` |  |
| evan-did-driver | string | `nil` |  |
| evanDidDriver.affinity | object | `{}` |  |
| evanDidDriver.fullnameOverride | string | `"evan-did-driver"` |  |
| evanDidDriver.image.pullPolicy | string | `"Always"` |  |
| evanDidDriver.image.repository | string | `"evannetwork/evan-did-driver"` |  |
| evanDidDriver.image.tag | string | `"latest"` |  |
| evanDidDriver.nameOverride | string | `"evan-did-driver"` |  |
| evanDidDriver.nodeSelector | object | `{}` |  |
| evanDidDriver.podSecurityContext | object | `{}` |  |
| evanDidDriver.replicaCount | int | `1` |  |
| evanDidDriver.resources.requests.cpu | string | `"100m"` |  |
| evanDidDriver.resources.requests.memory | string | `"128Mi"` |  |
| evanDidDriver.securityContext | object | `{}` |  |
| evanDidDriver.service.port | int | `8080` |  |
| evanDidDriver.service.type | string | `"ClusterIP"` |  |
| evanDidDriver.tolerations | list | `[]` |  |
| gataca-did-resolver-driver | string | `nil` |  |
| hacera-did-driver | string | `nil` |  |
| jolocom-did-driver | string | `nil` |  |
| jolocomDidDriver.affinity | object | `{}` |  |
| jolocomDidDriver.fullnameOverride | string | `"jolocom-did-driver"` |  |
| jolocomDidDriver.image.pullPolicy | string | `"Always"` |  |
| jolocomDidDriver.image.repository | string | `"jolocomgmbh/jolocom-did-driver"` |  |
| jolocomDidDriver.image.tag | string | `"latest"` |  |
| jolocomDidDriver.nameOverride | string | `"jolocom-did-driver"` |  |
| jolocomDidDriver.nodeSelector | object | `{}` |  |
| jolocomDidDriver.podSecurityContext | object | `{}` |  |
| jolocomDidDriver.replicaCount | int | `1` |  |
| jolocomDidDriver.resources.requests.cpu | string | `"100m"` |  |
| jolocomDidDriver.resources.requests.memory | string | `"128Mi"` |  |
| jolocomDidDriver.securityContext | object | `{}` |  |
| jolocomDidDriver.service.port | int | `8080` |  |
| jolocomDidDriver.service.type | string | `"ClusterIP"` |  |
| jolocomDidDriver.tolerations | list | `[]` |  |
| kilt-did-driver | string | `nil` |  |
| ontid-driver | string | `nil` |  |
| ontidDriver.affinity | object | `{}` |  |
| ontidDriver.fullnameOverride | string | `"ontid-driver"` |  |
| ontidDriver.image.pullPolicy | string | `"Always"` |  |
| ontidDriver.image.repository | string | `"ontio/ontid-driver"` |  |
| ontidDriver.image.tag | string | `"latest"` |  |
| ontidDriver.nameOverride | string | `"ontid-driver"` |  |
| ontidDriver.nodeSelector | object | `{}` |  |
| ontidDriver.podSecurityContext | object | `{}` |  |
| ontidDriver.replicaCount | int | `1` |  |
| ontidDriver.resources.requests.cpu | string | `"100m"` |  |
| ontidDriver.resources.requests.memory | string | `"128Mi"` |  |
| ontidDriver.securityContext | object | `{}` |  |
| ontidDriver.service.port | int | `8080` |  |
| ontidDriver.service.type | string | `"ClusterIP"` |  |
| ontidDriver.tolerations | list | `[]` |  |
| schema-registry-did-resolver | string | `nil` |  |
| seraph-id-did-driver | string | `nil` |  |
| tsjs-did-sirius-id-driver | string | `nil` |  |
| uni-resolver-did-v1-driver | string | `nil` |  |
| uni-resolver-driver-did-echo | string | `nil` |  |
| uni-resolver-driver-did-io | string | `nil` |  |
| uni-resolver-driver-did-uport | string | `nil` |  |
| uni-resolver-web.ingress.enabled | bool | `true` |  |
| uni-resolver-web.ingress.hosts[0].host | string | `"uni-resolver.int.eu.spherity.io"` |  |
| uni-resolver-web.ingress.hosts[0].paths[0].path | string | `"/"` |  |
| uni-resolver-web.ingress.tls[0].hosts[0] | string | `"uni-resolver.int.eu.spherity.io"` |  |
| uniResolverDriverDidUport.affinity | object | `{}` |  |
| uniResolverDriverDidUport.fullnameOverride | string | `"uni-resolver-driver-did-uport"` |  |
| uniResolverDriverDidUport.nameOverride | string | `"uni-resolver-driver-did-uport"` |  |
| uniResolverDriverDidUport.nodeSelector | object | `{}` |  |
| uniResolverDriverDidUport.podSecurityContext | object | `{}` |  |
| uniResolverDriverDidUport.replicaCount | int | `1` |  |
| uniResolverDriverDidUport.resources.requests.cpu | string | `"100m"` |  |
| uniResolverDriverDidUport.resources.requests.memory | string | `"128Mi"` |  |
| uniResolverDriverDidUport.securityContext | object | `{}` |  |
| uniResolverDriverDidUport.service.port | int | `8081` |  |
| uniResolverDriverDidUport.service.type | string | `"ClusterIP"` |  |
| uniResolverDriverDidUport.tolerations | list | `[]` |  |
| uniResolverWeb.affinity | object | `{}` |  |
| uniResolverWeb.fullnameOverride | string | `"uni-resolver-web"` |  |
| uniResolverWeb.ingress.host | string | `"uni-resolver.int.eu.spherity.io"` |  |
| uniResolverWeb.nameOverride | string | `"uni-resolver-web"` |  |
| uniResolverWeb.nodeSelector | object | `{}` |  |
| uniResolverWeb.podSecurityContext | object | `{}` |  |
| uniResolverWeb.replicaCount | int | `1` |  |
| uniResolverWeb.resources.requests.cpu | string | `"100m"` |  |
| uniResolverWeb.resources.requests.memory | string | `"128Mi"` |  |
| uniResolverWeb.securityContext | object | `{}` |  |
| uniResolverWeb.service.port | int | `8080` |  |
| uniResolverWeb.service.type | string | `"ClusterIP"` |  |
| uniResolverWeb.tolerations | list | `[]` |  |
| work-did-driver | string | `nil` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.5.0](https://github.com/norwoodj/helm-docs/releases/v1.5.0)

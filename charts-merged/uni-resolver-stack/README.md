# uni-resolver-stack

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
helm install uni-resolver-stack .
```

or

```sh
helm repo add decentralized-identity https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages
helm repo update 
helm install decentralized-identity/uni-resolver-stack -f values.yaml
```



## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | ace-did-driver | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | bba-did-driver | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | dock-did-driver | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | driver-did-abt | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | driver-did-bid | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | driver-did-btcr | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | driver-did-ccp | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | driver-did-cy | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | driver-did-erc725 | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | driver-did-factom | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | driver-did-icon | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | driver-did-ion | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | driver-did-key | 0.1.1 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | driver-did-mpg | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | driver-did-sov | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | driver-did-stack | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | driver-did-trust | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | driver-did-trustbloc | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | driver-did-vaa | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | driver-dns | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | evan-did-driver | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | gataca-did-resolver-driver | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | hacera-did-driver | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | jolocom-did-driver | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | kilt-did-driver | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | ontid-driver | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | schema-registry-did-resolver | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | seraph-id-did-driver | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | tsjs-did-sirius-id-driver | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | uni-resolver-did-v1-driver | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | uni-resolver-driver-did-echo | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | uni-resolver-driver-did-io | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | uni-resolver-driver-did-uport | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | uni-resolver-web | 0.1.0 |
| https://raw.githubusercontent.com/decentralized-identity/charts/gh-pages | work-did-driver | 0.1.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| ace-did-driver.image.repository | string | `"uni-resolver/ace-did-driver"` |  |
| bba-did-driver.image.repository | string | `"uni-resolver/bba-did-driver"` |  |
| dock-did-driver.image.repository | string | `"uni-resolver/dock-did-driver"` |  |
| dock-did-driver.imagePullSecrets[0].name | string | `"harborpull"` |  |
| driver-did-abt.image.repository | string | `"uni-resolver/driver-did-abt"` |  |
| driver-did-bid.image.repository | string | `"uni-resolver/driver-did-bid"` |  |
| driver-did-btcr.image.repository | string | `"uni-resolver/driver-did-btcr"` |  |
| driver-did-ccp.image.repository | string | `"uni-resolver/driver-did-cpp"` |  |
| driver-did-cy.image.repository | string | `"uni-resolver/driver-did-cy"` |  |
| driver-did-erc725.image.repository | string | `"uni-resolver/driver-did-erc725"` |  |
| driver-did-factom.image.repository | string | `"uni-resolver/driver-did-factom"` |  |
| driver-did-icon.image.repository | string | `"uni-resolver/driver-did-icon"` |  |
| driver-did-ion.image.repository | string | `"uni-resolver/driver-did-ion"` |  |
| driver-did-key.image.repository | string | `"uni-resolver/driver-did-key"` |  |
| driver-did-mpg.image.repository | string | `"uni-resolver/driver-did-mpg"` |  |
| driver-did-sov.image.repository | string | `"uni-resolver/driver-did-sov"` |  |
| driver-did-stack.image.repository | string | `"uni-resolver/driver-did-stack"` |  |
| driver-did-trust.image.repository | string | `"uni-resolver/driver-did-trust"` |  |
| driver-did-trustbloc.image.repository | string | `"uni-resolver/driver-did-trustbloc"` |  |
| driver-did-vaa.enabled | bool | `false` |  |
| driver-did-vaa.image.repository | string | `"uni-resolver/driver-did-vaa"` |  |
| driver-dns.image.repository | string | `"uni-resolver/driver-dns"` |  |
| driverDidKey.affinity | object | `{}` |  |
| driverDidKey.fullnameOverride | string | `"driver-did-key"` |  |
| driverDidKey.image.pullPolicy | string | `"Always"` |  |
| driverDidKey.image.repository | string | `"uni-resolver/driver-did-key"` |  |
| driverDidKey.image.tag | string | `"latest"` |  |
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
| driverDidSov.image.pullPolicy | string | `"Always"` |  |
| driverDidSov.image.repository | string | `"uni-resolver/driver-did-sov"` |  |
| driverDidSov.image.tag | string | `"latest"` |  |
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
| driverDns.image.pullPolicy | string | `"Always"` |  |
| driverDns.image.repository | string | `"uni-resolver/driver-dns"` |  |
| driverDns.image.tag | string | `"latest"` |  |
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
| evan-did-driver.image.repository | string | `"uni-resolver/evan-did-driver"` |  |
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
| gataca-did-resolver-driver.image.repository | string | `"uni-resolver/universal-resolver-driver"` |  |
| hacera-did-driver.image.repository | string | `"uni-resolver/hacera-did-driver"` |  |
| jolocom-did-driver.image.repository | string | `"uni-resolver/jolocom-did-driver"` |  |
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
| kilt-did-driver.image.repository | string | `"uni-resolver/kilt-did-driver"` |  |
| ontid-driver.image.repository | string | `"uni-resolver/ontid-driver"` |  |
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
| schema-registry-did-resolver.image.repository | string | `"uni-resolver/schema-registry-did-resolver"` |  |
| seraph-id-did-driver.image.repository | string | `"uni-resolver/seraph-id-did-driver"` |  |
| tsjs-did-sirius-id-driver.image.repository | string | `"uni-resolver/tsjs-did-sirius-id-driver"` |  |
| uni-resolver-did-v1-driver.image.repository | string | `"uni-resolver/uni-resolver-did-v1-driver"` |  |
| uni-resolver-driver-did-echo.image.repository | string | `"uni-resolver/uni-resolver-driver-did-echo"` |  |
| uni-resolver-driver-did-io.image.repository | string | `"uni-resolver/uni-resolver-driver-did-io"` |  |
| uni-resolver-driver-did-uport.image.repository | string | `"uni-resolver/uni-resolver-driver-did-uport"` |  |
| uni-resolver-web.image.repository | string | `"uni-resolver/uni-resolver-web"` |  |
| uniResolverDriverDidUport.affinity | object | `{}` |  |
| uniResolverDriverDidUport.fullnameOverride | string | `"uni-resolver-driver-did-uport"` |  |
| uniResolverDriverDidUport.image.pullPolicy | string | `"Always"` |  |
| uniResolverDriverDidUport.image.repository | string | `"uni-resolver/uni-resolver"` |  |
| uniResolverDriverDidUport.image.tag | string | `"latest"` |  |
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
| uniResolverWeb.image.pullPolicy | string | `"Always"` |  |
| uniResolverWeb.image.repository | string | `"uni-resolver/uni-resolver-web"` |  |
| uniResolverWeb.image.tag | string | `"latest"` |  |
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
| work-did-driver.image.repository | string | `"uni-resolver/work-did-driver"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.5.0](https://github.com/norwoodj/helm-docs/releases/v1.5.0)

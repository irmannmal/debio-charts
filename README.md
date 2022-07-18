# DeBio Network Helm Charts

[![](https://github.com/debionetwork/charts/workflows/Release%20Charts/badge.svg?branch=main)](https://github.com/debionetwork/charts/actions)

DeBio Network Helm Charts

## Actions

* [@helm/kind-action](https://github.com/helm/kind-action)
* [@helm/chart-testing-action](https://github.com/helm/chart-testing-action)
* [@helm/chart-releaser-action](https://github.com/helm/chart-releaser-action)

## Project Status

`main` supports Helm 3 only, i. e. both `v1` and `v2` [API version](https://helm.sh/docs/topics/charts/#the-apiversion-field) charts are installable.

## Chart Sources

* `charts/debio-node`: [DeBio Node Chart](https://github.com/debionetwork/debio-charts/tree/main/charts/debio-node)
* `charts/debio-background-worker`: [DeBio Indexer Chart](https://github.com/debionetwork/debio-charts/tree/main/charts/debio-background-worker)
* `charts/debio-backend`: [DeBio API Chart](https://github.com/debionetwork/debio-charts/tree/main/charts/debio-backend)
* `charts/debio-customer-ui`: [DeBio App Chart](https://github.com/debionetwork/debio-charts/tree/main/charts/debio-customer-ui)
* `charts/debio-frontend`: [DeBio Lab Chart](https://github.com/debionetwork/debio-charts/tree/main/charts/debio-frontend)
* `charts/debio-conversion`: [DeBio Conversion](https://github.com/debionetwork/debio-charts/tree/main/charts/debio-conversion)
* `charts/debio-staking-synchronizer`: [DeBio Staking Synchronizer](https://github.com/debionetwork/debio-charts/tree/main/charts/debio-staking-synchronizer)

## Usage

```bash
helm repo add debio https://charts.debio.network
helm repo update
helm install debio-node debio/debio-node
```

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

* `charts/debio-node`: DeBio Node Chart
* `charts/debio-indexer`: DeBio Indexer Chart
* `charts/debio-backend`: DeBio API Chart
* `charts/debio-customer-ui`: DeBio App Chart
* `charts/debio-frontend`: DeBio Lab Chart

## Usage

```bash
helm repo add debio https://charts.debio.network
helm repo update
helm install debio-node debio/debio-node
```

<div align="center">
<img src="https://avatars.githubusercontent.com/u/76637246?s=200&v=4">
</div>

<div align="Center">
<h1> DeBio Charts</h1>
<h2> Decentralized Sovereign Biomed </h2>
The Anonymous-First Platform for Medical and Bioinformatics Data.
<br>
Built on Substrate.

<br>
<br>

[![Medium](https://img.shields.io/badge/Medium-DeBio-brightgreen?logo=medium)](https://medium.com/@debionetwork.blog)
[![Release](https://github.com/debionetwork/debio-charts/actions/workflows/releaser.yml/badge.svg)](https://github.com/debionetwork/debio-charts/actions/workflows/releaser.yml)
[![Test](https://github.com/debionetwork/debio-charts/actions/workflows/tester.yml/badge.svg)](https://github.com/debionetwork/debio-charts/actions/workflows/tester.yml)
</div>

---

DeBio is a decentralized anonymous-first platform for medical and bioinformatics data. It uses blockchain technology as the immutable transaction ledger to support its processes.

DeBio blockchain nodes are built using Substrate, Parity's blockchain framework that allows for quick development of blockchains customizable by its pallets system.

## Actions

* [@helm/kind-action](https://github.com/helm/kind-action)
* [@helm/chart-testing-action](https://github.com/helm/chart-testing-action)
* [@helm/chart-releaser-action](https://github.com/helm/chart-releaser-action)

## Project Status

`main` supports Helm 3 only, i. e. both `v1` and `v2` [API version](https://helm.sh/docs/topics/charts/#the-apiversion-field) charts are installable.

## Chart Sources

* `charts/debio-node`: [DeBio Node Chart](https://github.com/debionetwork/debio-charts/tree/main/charts/debio-node)
* `charts/debio-backend`: [DeBio API Chart](https://github.com/debionetwork/debio-charts/tree/main/charts/debio-backend)
* `charts/debio-background-worker`: [DeBio Background Worker Chart](https://github.com/debionetwork/debio-charts/tree/main/charts/debio-background-worker)
* `charts/debio-conversion`: [DeBio Conversion](https://github.com/debionetwork/debio-charts/tree/main/charts/debio-conversion)
* `charts/debio-staking-synchronizer`: [DeBio Staking Synchronizer](https://github.com/debionetwork/debio-charts/tree/main/charts/debio-staking-synchronizer)
* `charts/debio-frontend`: [DeBio Lab Chart](https://github.com/debionetwork/debio-charts/tree/main/charts/debio-frontend)
* `charts/debio-genetic-analyst-ui`: [DeBio Lab Chart](https://github.com/debionetwork/debio-charts/tree/main/charts/debio-genetic-analyst-ui)
* `charts/debio-customer-ui`: [DeBio App Chart](https://github.com/debionetwork/debio-charts/tree/main/charts/debio-customer-ui)

## Usage

```bash
helm repo add debionetwork https://charts.debio.network
helm repo update
helm install debio-node debionetwork/debio-node
```

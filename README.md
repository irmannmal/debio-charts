<div align="center">
<img src="https://avatars.githubusercontent.com/u/76637246?s=200&v=4">
</div>
<div align="Center">
<h1>DeBio Network Charts</h1>
<h2>Decentralized Sovereign Biomed</h2>
The Anonymous-First Platform for Medical and Bioinformatics Data.

<br>
<br>

[![Medium](https://img.shields.io/badge/Medium-DeBio-brightgreen?logo=medium)](https://medium.com/@debionetwork.blog)

</div>

---

DeBio Network is a decentralized anonymous-first platform for medical and bioinformatics data. It uses blockchain technology as the immutable transaction ledger to support its processes.

## Actions

* [@helm/kind-action](https://github.com/helm/kind-action)
* [@helm/chart-testing-action](https://github.com/helm/chart-testing-action)
* [@helm/chart-releaser-action](https://github.com/helm/chart-releaser-action)

## Project Status

`main` supports Helm 3 only, i. e. both `v1` and `v2` [API version](https://helm.sh/docs/topics/charts/#the-apiversion-field) charts are installable.

## Chart Sources

* `charts/debio-node`: [DeBio Node Chart](./charts/debio-node)
* `charts/debio-app-deployer`: [DeBio App Deployer Chart](./charts/debio-app-deployer)

## Usage

```bash
helm repo add debionetwork https://charts.debio.network
helm repo update
helm install debio-node debionetwork/debio-node
```

<p align="center">
  <img alt="helm-chart" src="https://caylent.com/wp-content/uploads/2018/12/Featured-images-helms-tools.png" width="250px" float="center"/>
</p>

<h1 align="center">Prometheus Exporter Helm Chart</h1>

<p align="center">
  <strong>This Helm Chart deploy prometheus exports and create an endpoint to each them</strong>
</p>


<p align="center">
  <a href="https://github.com/lpmatos/prometheus-exporter">
    <img alt="Open Source" src="https://badges.frapsoft.com/os/v1/open-source.svg?v=102">
  </a>

  <a href="https://github.com/lpmatos/prometheus-exporter/graphs/contributors">
    <img alt="GitHub Contributors" src="https://img.shields.io/github/contributors/lpmatos/prometheus-exporter">
  </a>

  <a href="https://github.com/lpmatos/prometheus-exporter">
    <img alt="GitHub Language Count" src="https://img.shields.io/github/languages/count/lpmatos/prometheus-exporter">
  </a>

  <a href="https://github.com/lpmatos/prometheus-exporter">
    <img alt="GitHub Top Language" src="https://img.shields.io/github/languages/top/lpmatos/prometheus-exporter">
  </a>

  <a href="https://github.com/lpmatos/prometheus-exporter/stargazers">
    <img alt="GitHub Stars" src="https://img.shields.io/github/stars/lpmatos/prometheus-exporter?style=social">
  </a>

  <a href="https://github.com/lpmatos/prometheus-exporter/commits/master">
    <img alt="GitHub Last Commit" src="https://img.shields.io/github/last-commit/lpmatos/prometheus-exporter">
  </a>

  <a href="https://github.com/lpmatos/prometheus-exporter">
    <img alt="Repository Size" src="https://img.shields.io/github/repo-size/lpmatos/prometheus-exporter">
  </a>

  <a href="https://github.com/lpmatos/prometheus-exporter/issues">
    <img alt="Repository Issues" src="https://img.shields.io/github/issues/lpmatos/prometheus-exporter">
  </a>

  <a href="https://github.com/lpmatos/prometheus-exporter/blob/master/LICENSE">
    <img alt="MIT License" src="https://img.shields.io/github/license/lpmatos/prometheus-exporter">
  </a>
</p>

### Menu

<p align="center">
  <a href="#kubernetes">Kubernetes</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#architecture">Architecture</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#validate-helm">Validate</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#exemple-answers">Exemple</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#how-to-contribute">How to contribute</a>
</p>

### By me a coffe

Pull requests are welcome. If you'd like to support the work and buy me a ☕, I greatly appreciate it!

<a href="https://www.buymeacoffee.com/EatdMck" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 100px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>

### Getting Started

To use this repository you need to make a **git clone**:

```bash
git clone --depth 1 https://github.com/lpmatos/prometheus-exporter.git -b master
```

This will give access on your **local machine** to this project.

## Prerequisites Details

* Kubernetes 1.10+
* PV dynamic provisioning support on the underlying infrastructure

### Introduction

This chart creates a API, Frontend and Database deployment on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

### Organization

* **/templates** is a directory of templates that, when combined with values.
* **/templates/_helpers.tpl** file where we define custom templates.
* **/templates/NOTES.txt** OPTIONAL: A plain text file containing short usage notes.
* **/files** folder to inject external files.
* **Chart.yml** A YAML file containing information about the chart.
* **values.yml** The default configuration values for this chart.
* **README.md** OPTIONAL: A human-readable README file.

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
$ helm install --name my-release saas-taskflow
```

## Deleting the Charts

Delete the Helm deployment as normal

```
$ helm delete my-release
```

Deletion of the StatefulSet doesn't cascade to deleting associated PVCs. To delete them:

```
$ kubectl delete pvc -l release=my-release,component=data
```

## Kubernetes

* Deployment:
  * Exports

* Ingress:
  * Exports.

* Service:
  * Exports

* Secret:
  * AWS Secret.
  * Docker Registry Secret.

* ConfigMap:
  * Values.
  * External.

### Validate Helm

To valite your Helm Template you can run this command:

```bash
helm install --debug --dry-run . --generate-name
```

### Exemple Answers 

```yaml
global:
  replicaCount: 2
```

### Helm

![Alt text](docs/images/HELM.PNG?raw=true "Helm")

### Prometheus

![Alt text](docs/images/PROMETHEUS.PNG?raw=true "Prometheus")

### Built with

- [Helm](https://helm.sh/)
- [YAML](https://yaml.org/)

### Links

* https://stackoverflow.com/questions/59824039/basic-authentication-via-nginx-ingress-controller
* https://github.com/theupdateframework/notary/pull/1503/files/8685262c4b6c0763af6b7c4366a126b3a0378826
* https://stackoverflow.com/questions/56671452/helm-chart-error-cant-evaluate-field-values-in-type-interface
* https://github.com/helm/helm/issues/3403
* https://stackoverflow.com/questions/44780166/nested-ranges-in-golang-template
* https://stackoverflow.com/questions/55639436/create-multiple-persistent-volumes-in-one-yaml
* https://github.com/helm/helm/issues/1669

### How to contribute

>
> 1. Make a **Fork**.
> 2. Follow the project organization.
> 3. Add the file to the appropriate level folder - If the folder does not exist, create according to the standard.
> 4. Make the **Commit**.
> 5. Open a **Pull Request**.
> 6. Wait for your pull request to be accepted.. 🚀
>
Remember: There is no bad code, there are different views/versions of solving the same problem. 😊

### Add to git and push

You must send the project to your GitHub after the modifications

```bash
git add -f .
git commit -m "Added - Fixing somethings"
git push origin master
```

### Versioning

- [CHANGELOG](CHANGELOG.md)

### License

Distributed under the MIT License. See [LICENSE](LICENSE) for more information.

### Author

👤 **Lucca Pessoa**

Hey!! If you like this project or if you find some bugs feel free to contact me in my channels:

> * Email: luccapsm@gmail.com
> * Website: https://github.com/lpmatos
> * Github: [@lpmatos](https://github.com/lpmatos)
> * LinkedIn: [@luccapessoa](https://linkedin.com/in/luccapessoa)

### Show your support

Give a ⭐️ if this project helped you!

### Project Status

* ✔️ Finish

---

<p align="center">Feito com ❤️ by <strong>Lucca Pessoa :wave:</p>

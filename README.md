<h1 align="center">Prometheus Exporter Helm Chart</h1>

### Menu

<p align="center">
  <a href="#services">Services</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#kubernetes">Kubernetes</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#architecture">Architecture</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#validate-helm">Validate</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#exemple-answers">Exemple</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#how-to-contribute">How to contribute</a>
</p>

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

## Services

* Exports

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

1. Make a **Fork**.
2. Follow the project organization.
3. Add the file to the appropriate level folder - If the folder does not exist, create according to the standard.
4. Make the **Commit**.
5. Open a **Pull Request**.
6. Wait for your pull request to be accepted.. 🚀

Remember: There is no bad code, there are different views/versions of solving the same problem. 😊

### Add to git and push

You must send the project to your GitHub after the modifications

```bash
git add -f .
git commit -m "Added - initial files in the project"
git push origin master
```

### Versioning

- [CHANGELOG](CHANGELOG.md)

### Show your support

Give a ⭐️ if this project helped you!

### Project Migration Digital Ocean to AWS

* ✔️ Finish

---

Feito com ❤️ by **Lucca Pessoa**

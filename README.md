# Consigne

## 1 - Installation du Cluster

- [ ] Installation avec Vagrant (ou autre si plus performant) + sh + Ansible
- [ ] Bastion seul le bastion a accès aux commandes kubes et aux machines kubes
- [ ] HaProxy en loadbalancer
- [ ] Cluster Kube 3 master / 3 workers
	- [ ] nginx ou traeffic en Ingress Controller
	- [ ] CNI provider : ovn-kubernetes

## 2 - Installation d'application

Les applications type registry etc seront déployées via Helm aussi

En application :
- [ ] Registry : Harbour
- [ ] Monitoring : Prometheus / Grafana
- [ ] Gestion de code : Gitlab
- [ ] Pipeline GitOps : Argo

## 3 - Accès aux applications depuis l'IP du bastion

Pour accès via URL : modifier / etc/hosts de ta machine

- [ ] Pour l'appli "bateau" un flask en python ça suffit "Hello World"
- [ ] Crée une pipeline gitlab où est héberger le code d'une appli où son image sera build et stocké sur harbour (pipeline avec tags : dev / staging / prod)
- [ ] L'image stockée sera déployée via un chart Helm lui aussi stocké sur Gitlab (pipeline de déploiement)

# Pré-requis

Performances :
 - X vCPU
 - X RAM

Logiciels :
- [VMware Workstation](https://www.vmware.com/fr/products/workstation-pro.html)
- [Vagrant](https://developer.hashicorp.com/vagrant/tutorials/getting-started/getting-started-install)
	- [Vagrant vmware-desktop plugin](https://developer.hashicorp.com/vagrant/docs/providers/vmware/installation)
	- [Vagrant VMware Utility](https://developer.hashicorp.com/vagrant/downloads/vmware)

# Sources

- [Créer un cluster Kubernetes Multi-nœud avec Vagrant et Ansible](https://devopssec.fr/article/creer-cluster-kubernetes-multi-noeud-vagrant-ansible)
# Consigne

## 1 - Installation du Cluster

- Installation avec Vagrant (ou autre si plus performant) + sh + Ansible
- Bastion seul le bastion a accès aux commandes kubes et aux machines kubes
- HaProxy en loadbalancer
- Cluster Kube 3 master / 3 workers
	- nginx ou traeffic en Ingress Controller
	- CNI provider : ovn-kubernetes

## 2 - Installation d'application

Les applications type registry etc seront déployées via Helm aussi

En application :
- Registry : Harbour
- Monitoring : Prometheus / Grafana
- Gestion de code : Gitlab
- Pipeline GitOps : Argo

## 3 - Accès aux applications depuis l'IP du bastion

Pour accès via URL : modifier / etc/hosts de ta machine

Pour l'appli "bateau" un flask en python ça suffit "Hello World"
Crée une pipeline gitlab où est héberger le code d'une appli où son image sera build et stocké sur harbour (pipeline avec tags : dev / staging / prod)
L'image stockée sera déployée via un chart Helm lui aussi stocké sur Gitlab (pipeline de déploiement)

# Recherche d'information

## Vagrant

## Bastion & K8s

## HaProxy

## nginx ou traeffic

## Harbour

## Gitlab sur K8s

## Argo
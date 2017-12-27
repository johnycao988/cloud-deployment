#!/bin/sh
## delete
kubectl delete configmap traefik-configmap -n kube-system
## Create  
kubectl create configmap traefik-configmap --namespace=kube-system --from-file=./tls.crt --from-file=./tls.key --from-file=./traefik.toml

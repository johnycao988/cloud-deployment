#!/bin/sh
## delete
kubectl delete configmap keycloak-configmap -n sso
## Create  
kubectl create configmap keycloak-configmap --namespace=sso --from-file=./standalone.xml

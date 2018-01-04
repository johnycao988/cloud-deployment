#!/bin/sh
## delete
kubectl delete configmap logstash-configmap -n elk
## Create  
kubectl create configmap logstash-configmap --namespace=elk --from-file=./logstash.conf

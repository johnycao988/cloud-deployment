##k8s  Master server ,first need to run "chmod +x *.sh" in command line 



#!/bin/sh
### before run below cmd, need to set value of '--apiserver-advertise-address' and '--pod-network-cidr'

kubeadm init --token-ttl=0  --pod-network-cidr=10.244.0.0/16 --apiserver-advertise-address=192.168.3.101

mkdir -p $HOME/.kube && sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config && sudo chown $(id -u):$(id -g) $HOME/.kube/config

kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/v0.9.1/Documentation/kube-flannel.yml

# kubectl taint nodes --all node-role.kubernetes.io/master- 

 



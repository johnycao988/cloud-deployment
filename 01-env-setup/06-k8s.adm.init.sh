##k8s  Master server ,first need to run "chmod +x *.sh" in command line 

#!/bin/sh

kubeadm init --token-ttl=0  --pod-network-cidr=10.244.0.0/16 --apiserver-advertise-address=XXX.xxx.xxx.xxx

mkdir -p $HOME/.kube && sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config && sudo chown $(id -u):$(id -g) $HOME/.kube/config

kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/v0.9.1/Documentation/kube-flannel.yml

# kubectl taint nodes --all node-role.kubernetes.io/master- 

 



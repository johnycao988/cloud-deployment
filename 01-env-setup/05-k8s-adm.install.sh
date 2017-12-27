## Master server ,first need to run "chmod +x *.sh" in command line 

#!/bin/sh
# config yum repo.

cat <<EOF > /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF

yum update

setenforce 0

swapoff -a

yum install -y kubelet kubeadm kubectl

systemctl enable kubelet && systemctl start kubelet

kubeadm init --token-ttl=0  --pod-network-cidr=10.244.0.0/16 --apiserver-advertise-address=XXX.xxx.xxx.xxx

mkdir -p $HOME/.kube && sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config && sudo chown $(id -u):$(id -g) $HOME/.kube/config

kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/v0.9.1/Documentation/kube-flannel.yml
 



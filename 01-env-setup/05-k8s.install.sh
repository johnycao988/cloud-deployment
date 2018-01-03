## Master server ,first need to run "chmod +x *.sh" in command line 

#!/bin/sh
# config yum repo.

export _CSAST='ansible -i ./ansible-hosts all -m'

## set k8s yum repo.

$_CSAST copy -a 'src=./kubernetes.repo dest=/etc/yum.repos.d/kubernetes.repo'

$_CSAST command -a 'yum update'

$_CSAST command -a 'setenforce 0'

$_CSAST command -a 'swapoff -a'

$_CSAST command -a 'yum install -y kubelet kubeadm kubectl'

$_CSAST command -a 'systemctl enable kubelet && systemctl start kubelet'


 



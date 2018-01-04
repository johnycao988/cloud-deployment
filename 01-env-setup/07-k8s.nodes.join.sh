## Master server ,first need to run "chmod +x *.sh" in command line 

#!/bin/sh

export _CSAST='ansible -i ./ansible-hosts k8s-nodes -m'

### before run below cmd, need to set value of '--token' and --discovery-token-ca-cert-hash
$_CSAST command -a 'kubeadm join --token bcbe86.9ebf7652ddb423be 192.168.3.101:6443 --discovery-token-ca-cert-hash sha256:e68fe19ecde8d9bc291fc0b8f919dc937768861f462a9b76087b3a601847738c' 
 
 
$_CSAST copy -a 'src=./resolv.conf dest=/etc/resolv.conf'

$_CSAST copy -a 'src=/etc/kubernetes/admin.conf dest=/etc/kubernetes/admin.conf'

$_CSAST copy -a 'src=./10-kubeadm.conf dest=/etc/systemd/system/kubelet.service.d/10-kubeadm.conf'

$_CSAST command -a 'mkdir -p /etc/cni/net.d'

$_CSAST copy -a 'src=/etc/cni/net.d/10-flannel.conf dest=/etc/cni/net.d/10-flannel.conf'

 
 
###  reset kubernetes
# on master:
# kubeadm delete node nodeName 
# on node: 
# kubeadm reset && setenforce 0 

##  $_CSAST command -a 'kubeadm reset'
##  $_CSAST copy -a 'src=./resolv.conf.bak dest=/etc/resolv.conf'

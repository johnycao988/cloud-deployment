## Master server ,first need to run "chmod +x *.sh" in command line 

#!/bin/sh

export _CSAST='ansible -i ./ansible-hosts k8s-nodes -m'

### before run below cmd, need to set value of '--token' and --discovery-token-ca-cert-hash
$_CSAST command -a 'kubeadm join --token bcbe86.9ebf7652ddb423be 192.168.3.101:6443 --discovery-token-ca-cert-hash sha256:e68fe19ecde8d9bc291fc0b8f919dc937768861f462a9b76087b3a601847738c' 
 
$_CSAST copy -a 'src=./resolv.conf dest=/etc/resolv.conf'

 
###  reset kubernetes
# on master:
# kubeadm delete node nodeName 
# on node: 
# kubeadm reset && setenforce 0 


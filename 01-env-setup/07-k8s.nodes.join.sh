## Master server ,first need to run "chmod +x *.sh" in command line 

#!/bin/sh

export _CSAST='ansible -i ./ansible-hosts k8s-nodes -m'

$_CSAST command -a 'kubeadm join --token d239e7.9b11c0ac56999c2c 10.39.101.226:6443 --discovery-token-ca-cert-hash sha256:4ef00683d596d022f449e6e10e9ba27557074c4cb3ab0bdf8eb92cd8b9cfbf30' 
 
# you can reset kubernetes
# on master: kubeadm delete node nodeName 
# on node: kubeadm reset && setenforce 0 


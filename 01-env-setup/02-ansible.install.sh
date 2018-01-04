## Master server ,first need to run "chmod +x *.sh" in command line 

#!/bin/sh

### step1: install ansible
echo "Installing ansible..."
yum install ansible
 
echo "Successfully install ansible"

### ansible -i ./ansible-hosts k8s-nodes -m command -a 'systemctl daemon-reload && systemctl restart kubelet'
 
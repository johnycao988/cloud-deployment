## Master server ,first need to run "chmod +x *.sh" in command line 

#!/bin/sh
# install docker
ansible all -m command -a 'yum install -y docker'

## set docker registry
ansible all -m command -a 'cat << EOF > /etc/docker/daemon.json
{"insecure-registries":["10.39.101.226:5000"] } 
EOF'
 
## enable and start docker service
ansible all -m command -a 'systemctl enable docker && systemctl start docker'


